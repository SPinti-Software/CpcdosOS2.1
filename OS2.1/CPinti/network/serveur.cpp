/*	
	======================================
	==       CPinti ---> SERVEUR TCP    ==
	======================================
	
	Developpe entierement par Sebastien FAVIER

	Description
		Module permettant de creer un serveur TCP/UDP multi-client multithread multi I/O
	
	Creation
		19/10/2016
		
	Reecriture
		02/11/2016
		18/11/2016
		11/07/2019

	Mise a jour
		12-MAR-2020
		
		12-MAR-2020 : Readaptation et correction pour la beta 1.2
		11-07-2019	: REFONTE COMPLETE
		07-12-2017	: AMELIORATION du code en suivant une procedure sticte de GCC
		11-04-2017	: ADAPTATION pour creation de serveur d'ECHO.
		21-02-2017	: DEBUG ajout info port
		14-02-2017	: Revue des includes + Finitions
		13-02-2017	: Ajout du controle d'envoie (#CLT# et #TOUT#) pour choisir en envoie general ou cible
		07-02-2017	: Ajout des fonctionnalites de controle de buffer
	
*/

#include <stdio.h>
#include <ctime> // RAND()
#include <unistd.h> // usleep

#include <sys/select.h>
#include <sys/socket.h>
#include <netinet/ip.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <netinet/in.h> // Deja inclu?

#include <string.h>
#include <stdlib.h>
#include <sys/types.h>

#include <pthread.h>

#include "cpinti.h"
#include "Func_cpi.h"

#include "debug.h"
#include "serveur.h"
#include "stack.h"
#include "buffer.h"


// #include "leakchk.h"



extern "C" void __real_sleep (long secondes);

namespace cpinti
{
	namespace net_server
	{
		
		std::string Erreur_STR;
		
		void Fermer_socket(long SocketReseau)
		{
			shutdown((int) SocketReseau, 2);
			close((int) SocketReseau);
		}
		
		long Demarrer_serveur(unsigned long _NumPort, long _NombreClients, unsigned long __NumeroID, long __TYPE_SERVEUR)
		{
			
			// Cette fonction permet de creer un serveur TCP 
			//  _TYPE_SERVEUR 	= TCP:1 / UDP:2 / CCP:3 / TELNET:4 / ECHO tcp:5 / ECHO udp:6
			//  NumPort			= Numero de port
			//	_NumeroID		= Numero d'itentification unique associe a un processus

			unsigned int 	NumPort 			= (unsigned int) 	_NumPort;
			int 			NombreClients 		= (int) 			_NombreClients;
			unsigned int 	_NumeroID 			= (unsigned int) 	__NumeroID;
			int 			_TYPE_SERVEUR 		= (int) 			__TYPE_SERVEUR;
			
			const int NbClient_safe = NombreClients+4;
			
			int opt = true;   
			int SocketReseau , Taille_Adresse , New_Socket;
			int Resultat, i , TailleLue , SocketClient; 

			// A TESTER 13-04-2020
			int client_socket		[NbClient_safe];
			int client_PORT			[NbClient_safe];
			std::string client_IP	[NbClient_safe];
			
			 
			int FD_MAX;   
			int NbClientCO = 0;


			std::string MSG_Refus_Full = "[EN] Server is full / [FR] Le serveur est plein";
			
			struct sockaddr_in Sock_Adresse;   
			struct timeval 	TempsMAX;				// Temps de delai
		
			char buffer[TailleBuffer+1];  //data buffer of 1K  
				 
			//set of socket descriptors  
			fd_set FD_socket;   
			 
			// Initialiser tous les clients a zero
			for (i = 0; i < NombreClients; i++)   
			{   
				client_socket[i] = 0;   
			}   
			
			std::string NumPort_STR 		= std::to_string(NumPort);
			std::string NombreClients_STR 	= std::to_string(NombreClients);
			std::string _NumeroID_STR 		= std::to_string(_NumeroID);
			std::string _TYPE_SERVEUR_STR;
			
			
			if(_TYPE_SERVEUR == 1)
				_TYPE_SERVEUR_STR = "TCP";
			if(_TYPE_SERVEUR == 2)
				_TYPE_SERVEUR_STR = "UDP";
			if(_TYPE_SERVEUR == 3)
				_TYPE_SERVEUR_STR = "CCP TCP";
			if(_TYPE_SERVEUR == 4)
				_TYPE_SERVEUR_STR = "TELNET TCP";
			if(_TYPE_SERVEUR == 5)
				_TYPE_SERVEUR_STR = "TCP ECHO";
			if(_TYPE_SERVEUR == 6)
				_TYPE_SERVEUR_STR = "UDP ECHO";

		
			cpinti_dbg::CPINTI_DEBUG("Creation d'un serveur '" + _TYPE_SERVEUR_STR + "' port:" + NumPort_STR + " " + NombreClients_STR + " client(s) max.", 
									"Creating '" + _TYPE_SERVEUR_STR + "' server, port:" + NumPort_STR + " " + NombreClients_STR + " client(s) max.", 
						"SRV:" + NumPort_STR, "Demarrer_serveur()", Ligne_saute, Alerte_ok, Date_avec, Ligne_r_normal);
		
			
			
			/******************************************************************/
			/********************** CREATION D'UN SOCKET **********************/
			/******************************************************************/
			
			cpinti_dbg::CPINTI_DEBUG("Configuration du socket ", 
									 "Socket configuration ",
									 "SRV:" + NumPort_STR, "Demarrer_serveur()", Ligne_reste, Alerte_action, Date_avec, Ligne_r_normal);
		
							
			// Creer le socket du serveur
			if( (SocketReseau = socket(AF_INET , SOCK_STREAM , 0)) == 0)   
			{   
				//Stocker l'erreur dans un attribut membre de la classe qu'on pourrai recuperer
				Erreur_STR = std::string(strerror(errno));
				cpinti_dbg::CPINTI_DEBUG("[ERREUR] Impossible de creer le socket. Raison:'" + Erreur_STR + "'", 
										 "[ERROR] Unable to create socket. Reason:'" + Erreur_STR + "'", 
					"SRV:" + NumPort_STR, "Demarrer_serveur()", Ligne_saute, Alerte_erreur, Date_avec, Ligne_r_normal);
				return SRV_ERR_INIT_SOCK;
			}   
			
			cpinti_dbg::CPINTI_DEBUG(".", ".",
							"", "", Ligne_reste, Alerte_action, Date_sans, Ligne_r_normal);
							
			/******************************************************************/
			/******************** CONFIGURATION DU SOCKET *********************/
			/******************************************************************/
			
			// Accepter les multiples connexions
			if( setsockopt(SocketReseau, SOL_SOCKET, SO_REUSEADDR, (char *)&opt, sizeof(opt)) < 0 )   
			{   
				//Stocker l'erreur dans un attribut membre de la classe qu'on pourrai recuperer
				Erreur_STR = std::string(strerror(errno));
				cpinti_dbg::CPINTI_DEBUG("[ERREUR] Impossible de configurer 'SO_REUSEADDR' sur le socket . Raison:'" + Erreur_STR + "'", 
										 "[ERROR] Unable to configure 'SO_REUSEADDR' on the socket. Reason:'" + Erreur_STR + "'", 
					"SRV:" + NumPort_STR, "Demarrer_serveur()", Ligne_saute, Alerte_erreur, Date_avec, Ligne_r_normal);
				return SRV_ERR_INIT_SOCK;
			}   
			
			cpinti_dbg::CPINTI_DEBUG(".", ".",
							"", "", Ligne_reste, Alerte_action, Date_sans, Ligne_r_normal);// Accepter les multiples connexions
			if( setsockopt(SocketReseau, SOL_SOCKET, SO_REUSEADDR, (char *)&opt, sizeof(opt)) < 0 )   
			{   
				//Stocker l'erreur dans un attribut membre de la classe qu'on pourrai recuperer
				Erreur_STR = std::string(strerror(errno));
				cpinti_dbg::CPINTI_DEBUG("[ERREUR] Impossible de configurer 'SO_REUSEADDR' sur le socket . Raison:'" + Erreur_STR + "'", 
										 "[ERROR] Unable to configure 'SO_REUSEADDR' on the socket. Reason:'" + Erreur_STR + "'", 
					"SRV:" + NumPort_STR, "Demarrer_serveur()", Ligne_saute, Alerte_erreur, Date_avec, Ligne_r_normal);
				return SRV_ERR_INIT_SOCK;
			}   
			
			cpinti_dbg::CPINTI_DEBUG(".", ".",
							"", "", Ligne_reste, Alerte_action, Date_sans, Ligne_r_normal);
							
			
			TempsMAX.tv_sec = 0;
			TempsMAX.tv_usec = 5;
							
			// Configurer le timout du select()
			if(setsockopt(SocketReseau, SOL_SOCKET, SO_RCVTIMEO, (char *)&TempsMAX, sizeof(TempsMAX)) == -1)
			{
				//Stocker l'erreur dans un attribut membre de la classe qu'on pourrai recuperer
				Erreur_STR = std::string(strerror(errno));
				cpinti_dbg::CPINTI_DEBUG("[ERREUR] Impossible de configurer 'SO_RCVTIMEO' sur le socket. Raison:'" + Erreur_STR + "'", 
										 "[ERROR] Unable to configure 'SO_RCVTIMEO' on the socket. Reason:'" + Erreur_STR + "'", 
										"SRV:" + NumPort_STR, "", Ligne_saute, Alerte_erreur, Date_avec, Ligne_r_normal);
				return SRV_ERR_INIT_SOCK;
			}
			
			cpinti_dbg::CPINTI_DEBUG(" [OK]", " [OK]", "", "", Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
			
			/******************************************************************/
			/*********************** BINGAGE DU SOCKET  ***********************/
			/******************************************************************/
			
			cpinti_dbg::CPINTI_DEBUG("Binding socket ",
									"Socket binding ",
									"SRV:" + NumPort_STR, "Demarrer_serveur()", Ligne_reste, Alerte_action, Date_avec, Ligne_r_normal);
			
			cpinti_dbg::CPINTI_DEBUG(".", ".",
							"", "", Ligne_reste, Alerte_action, Date_sans, Ligne_r_normal);
			
			
			Sock_Adresse.sin_family 		= AF_INET;   
			Sock_Adresse.sin_addr.s_addr 	= INADDR_ANY;   
			Sock_Adresse.sin_port 			= htons( NumPort ); 
			
			cpinti_dbg::CPINTI_DEBUG(".", ".",
							"", "", Ligne_reste, Alerte_action, Date_sans, Ligne_r_normal);

			if (bind(SocketReseau, (struct sockaddr *)&Sock_Adresse, sizeof(Sock_Adresse))<0)   
			{   
				Erreur_STR = std::string(strerror(errno));
				cpinti_dbg::CPINTI_DEBUG("[ERREUR] Impossible de binder le socket. Raison:'" + Erreur_STR + "'", 
										 "[ERROR] Unable to bind socket. Reason:'" + Erreur_STR + "'", 
					"SRV:" + NumPort_STR, "Demarrer_serveur()", Ligne_saute, Alerte_erreur, Date_avec, Ligne_r_normal);
				Fermer_socket(SocketReseau);
				return SRV_ERR_BIND_SOCK;
			} 
			
			cpinti_dbg::CPINTI_DEBUG(".", ".",
							"", "", Ligne_reste, Alerte_action, Date_sans, Ligne_r_normal);

			cpinti_dbg::CPINTI_DEBUG(" [OK]", " [OK]", "", "", Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);


			if (listen(SocketReseau, NombreClients+4) < 0)   
			{   
				Erreur_STR = std::string(strerror(errno));
				cpinti_dbg::CPINTI_DEBUG("[ERREUR] Impossible de d'ecouter le socket. Raison:'" + Erreur_STR + "'", 
									"[ERROR] Unable to listen socket. Reason:'" + Erreur_STR + "'", 
									"SRV:" + NumPort_STR, "Demarrer_serveur()", Ligne_saute, Alerte_erreur, Date_avec, Ligne_r_normal);
				Fermer_socket(SocketReseau);
				return SRV_ERR_ECOUTE_SOCK;   
			}   

			Taille_Adresse = sizeof(Sock_Adresse); 
			
			/******************************************************************/
			/************************* LANCER SERVEUR ** **********************/
			/******************************************************************/
			
			{
				
				NbClientCO = 0;
				
				std::string NbClientCO_STR = std::to_string(NbClientCO);
				
				cpinti_dbg::CPINTI_DEBUG("Serveur demarre. Attente des connexions client (" + NbClientCO_STR + "/" + NombreClients_STR + ")",
									"Server started. Waiting client connections (" + NbClientCO_STR + "/" + NombreClients_STR + ")",
									"SRV:" + NumPort_STR, "", Ligne_saute, Alerte_ok, Date_avec, Ligne_r_normal);
					 
				std::string STACK_MEMOIRE_STR = "";
				
				bool Traite = false;
				bool EN_VIE = true;
				while(EN_VIE)   
				{   
					doevents(0);
					
					// Si aucun client est connecte
					if(NbClientCO == 0)
						doevents(100000);
					
					// Nettoyer le socket
					FD_ZERO(&FD_socket);   
				 
					// Ajouter le SocketReseau
					FD_SET(SocketReseau, &FD_socket);   
					FD_MAX = SocketReseau;   

					
					// Parcourir les client
					for ( i = 0 ; i < NombreClients ; i++)   
					{   
						// Socket
						SocketClient = client_socket[i];   
							 
						// Si il est valide, on l'ajoute dans la liste
						if(SocketClient > 0)   
							FD_SET(SocketClient , &FD_socket);   
							 
						// On prend le numero socket le plus haut
						if(SocketClient > FD_MAX)   
							FD_MAX = SocketClient;   
					}  
					
					// On recupere les donnees du buffer
					STACK_MEMOIRE_STR = cpinti::cpinti_GEST_BUFF(NumPort, _STACK_EXTRACT_POUR_SERVEUR, "");

					// S'il y a quelque chose
					if(STACK_MEMOIRE_STR.length() > 0)
					{
						std::string BUFFER = STACK_MEMOIRE_STR;
						
						
						
						
						Traite = false;
				
						if(BUFFER == "#STOP") 
						{
							cpinti_dbg::CPINTI_DEBUG("Fermeture du serveur a la demande du noyau ...", 
													"Closing server at the request of the kernel ...",
													"SRV:" + NumPort_STR, "", Ligne_saute, Alerte_action, Date_avec, Ligne_r_normal);
													
							int NombreEnvoie = 0;
							// Avertir tous les clients
							for ( i = 0 ; i < NombreClients ; i++)   
							{   
								if(client_socket[i] > 0)
								{
									send(client_socket[i] , "Server is down" , BUFFER.length() , MSG_DONTWAIT );
									NombreEnvoie++;
								}
							}
							
							std::string NombreEnvoie_STR = std::to_string(NombreEnvoie);
							
							// Deconnecter tous les clients
							for ( i = 0 ; i < NombreClients ; i++)   
							{   
								if(client_socket[i] > 0)
								{
									std::string index_STR = std::to_string(i);
									std::string port_STR = std::to_string(client_PORT[i]);
									
									cpinti_dbg::CPINTI_DEBUG("Deconnexion du client Socket#" + index_STR + "/" + NombreEnvoie_STR + " [" + client_IP[i] + ":" + port_STR + "] ...", 
													"Disconnecting client Socket#" + index_STR + "/" + NombreEnvoie_STR + " [" + client_IP[i] + ":" + port_STR + "] ...", 
													"SRV:" + NumPort_STR, "", Ligne_saute, Alerte_action, Date_avec, Ligne_reste);
													
									Fermer_socket(client_socket[i]);
									
									cpinti_dbg::CPINTI_DEBUG(" [OK]", " [OK]", "", "", Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
									
								}
							}								
							
							Traite = true;
							EN_VIE = false;
						}
						
						// Liberer le CPU pendant 200 ms
						else if(BUFFER == "#DOEVENTS") 
						{
							Traite = true;
							doevents(280395);
						}
							
						/*** ----------------------------------------------------------- ***/
						
						// FORME ex: "#XXX:192.168.1.2:1234 TCP#8="
						
						// Envoyer un message a TOUS les clients (ECHO TCP)
						if(BUFFER.find("#ETC ") != std::string::npos)
						{
							Traite = true;
							
							size_t posPORT 		= BUFFER.find(":");
							size_t posFINPORT = BUFFER.find("TCP#");
							size_t posFINSOCK = BUFFER.find("=");
							int NombreEnvoie 	= 0;
							int Client_SOCK;
							
							// Recuperer l'adresse IP
							std::string Client_IP_STR = BUFFER.substr(5, posPORT - 5);
							
							// Recuperer le numero de port
							std::string Client_PORT_STR = BUFFER.substr(posPORT + 1, posFINPORT - (posPORT + 1));

							// Recuperer le numero de socket 
							std::string Client_SOCK_STR = BUFFER.substr(posFINPORT + 4, posFINSOCK - (posFINPORT + 4));
							
							// A afficher seulement si le debogeur reseau est actif
							cpinti_dbg::CPINTI_DEBUG("Echo [" + Client_IP_STR + ":" + Client_PORT_STR + "] Socket #" + Client_SOCK_STR + " ... ", 
													 "Echo [" + Client_IP_STR + ":" + Client_PORT_STR + "] Socket #" + Client_SOCK_STR + " ... ", 
													 "SRV:" + NumPort_STR, "", Ligne_saute, Alerte_action, Date_avec, Ligne_r_normal);
													 
							BUFFER = BUFFER.substr(posFINSOCK+1);

							
							// Envoyer le meme message a tous les clients connectes
							for ( i = 0 ; i < NombreClients ; i++)   
							{   
								if(client_socket[i] > 0)
								{
									send(client_socket[i] , BUFFER.c_str() , BUFFER.length() , MSG_DONTWAIT );
									NombreEnvoie++;
								}
							}

							// Recuperer le nombre de client a qui ca ete envoye
							std::string NombreEnvoie_STR = std::to_string(NombreEnvoie);
							std::string BUFFER_length_STR = std::to_string(BUFFER.length());
							
							cpinti_dbg::CPINTI_DEBUG("Les donnees (" + BUFFER_length_STR + " octets) ont ete envoyes a " + NombreEnvoie_STR + " client(s) [OK]", 
													"Data (" + BUFFER_length_STR + " bytes) has been sent at " + NombreEnvoie_STR + " client(s) [OK]",
													"SRV:" + NumPort_STR, "", Ligne_saute, Alerte_ok, Date_avec, Ligne_r_normal);
						}
						
						// Envoyer un message a 1 client precis
						if(BUFFER.find("#CLT ") != std::string::npos)
						{
						
							cpinti_dbg::CPINTI_DEBUG("BUFFER : '" + BUFFER + "'", 
												"BUFFER : '" + BUFFER + "'", 
												"SRV:" + NumPort_STR, "", Ligne_saute, Alerte_action, Date_avec, Ligne_r_normal);
												
							Traite = true;

							size_t posFINPORT = BUFFER.find("TCP#");
							size_t posFINSOCK = BUFFER.find("=");
							
							int Client_SOCK;

							// Recuperer le numero de socket (+6 --> " TCP#" ou " UDP#")
							std::string Client_SOCK_STR = BUFFER.substr(posFINPORT + 4, posFINSOCK - (posFINPORT + 4));
							
							
							
							// Convertir en int pour la methode
							Client_SOCK = cpinti::Func_Cpinti::to_int(Client_SOCK_STR);
							
							BUFFER += "\0";
							BUFFER = BUFFER.substr(posFINSOCK+1);
							std::string BUFFER_length_STR = std::to_string(BUFFER.length());
							
							
							if(Client_SOCK > 0)				
								// Envoyer la trame au socket, Verifier d'abord s'il existe
								for ( i = 0 ; i < NombreClients ; i++)   
								{   

									if(client_socket[i] == Client_SOCK)
									{
										std::string client_PORT_STR = std::to_string(client_PORT[i]);
										
										cpinti_dbg::CPINTI_DEBUG("Envoi de " + BUFFER_length_STR + " octets a [" + client_IP[i] + ":" + client_PORT_STR + "] Socket #" + Client_SOCK_STR + " ... ", 
															 	 "Sending " + BUFFER_length_STR + " bytes to [" + client_IP[i] + ":" + client_PORT_STR + "] Socket #" + Client_SOCK_STR + " ... ", 
																 "SRV:" + NumPort_STR, "", Ligne_reste, Alerte_action, Date_avec, Ligne_r_normal);
													 
										send(client_socket[i] , BUFFER.c_str() , BUFFER.length() , MSG_DONTWAIT );
										
										cpinti_dbg::CPINTI_DEBUG(" [OK]", " [OK]", "", "", Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
										
										break;
									}
								}
						}
						
						if(Traite == false)
						{
							if(_TYPE_SERVEUR == 1) /* TCP */
							{
								
							}
							else if(_TYPE_SERVEUR == 2) /* UDP */
							{
								
							}	
							else if(_TYPE_SERVEUR == 3) /* TCP CCP */
							{
								
							}
							else if(_TYPE_SERVEUR == 4) /* TCP TELNET */
							{
								
							}
							else if(_TYPE_SERVEUR == 5) /* ECHO TCP */
							{
								
								
							}
							else if(_TYPE_SERVEUR == 6) /* ECHO UDP */
							{
								
							}
						}
					}

					// Attendre un signal
					Resultat = select( FD_MAX + 1 , &FD_socket , NULL , NULL , &TempsMAX);   
				   
				   if(NbClientCO == 0)
						doevents(100000);
				   
				   
					if ((Resultat < 0) && (errno!=EINTR))   
					{   
						Erreur_STR = std::string(strerror(errno));
						cpinti_dbg::CPINTI_DEBUG("[AVERTISSEMENT] Probleme de socket. Raison:'" + Erreur_STR + "'", 
									"[WARNING] Socket problem. Reason:'" + Erreur_STR + "'", 
									"SRV:" + NumPort_STR, "Demarrer_serveur()", Ligne_saute, Alerte_avertissement, Date_avec, Ligne_r_normal);
					}   
						 
					// Il y a eu quelque chose! Oh My GOD!
					if (FD_ISSET(SocketReseau, &FD_socket))   
					{   
						if ((New_Socket = accept(SocketReseau, (struct sockaddr *)&Sock_Adresse, (socklen_t*)&Taille_Adresse))<0)   
						{   
							Erreur_STR = std::string(strerror(errno)) + std::string(" errno(" + std::to_string(errno) + ") srvsck(" + std::to_string(SocketReseau) + ")");
							cpinti_dbg::CPINTI_DEBUG("[ERREUR] Impossible d'accepter le client. Raison:'" + Erreur_STR + "'", 
													 "[ERROR] Unable to accept client. Reason:'" + Erreur_STR + "'", 
								"SRV:" + NumPort_STR, "Demarrer_serveur()", Ligne_saute, Alerte_erreur, Date_avec, Ligne_r_normal);
							Fermer_socket(SocketReseau);
							return SRC_ERR_CLIENT;  
						}
						
					
						// Informer du nouveau socket
						std::string New_Socket_STR 	= std::to_string(New_Socket);
						std::string IP_STR 			= std::string(inet_ntoa(Sock_Adresse.sin_addr));
						int PORT 					= (int) ntohs(Sock_Adresse.sin_port);
						std::string PORT_STR 		= std::to_string(PORT);
						
						// Si le nombre de clients a atteint la limite
						if(NbClientCO >= NombreClients)
						{
							Erreur_STR = std::string(strerror(errno));
							cpinti_dbg::CPINTI_DEBUG("Connexion refuse [" + IP_STR + ":" + PORT_STR + "] Socket #" + New_Socket_STR, 
													 "Refused connection [" + IP_STR + ":" + PORT_STR + "] Socket #" + New_Socket_STR, 
													"SRV:" + NumPort_STR, "", Ligne_saute, Alerte_avertissement, Date_avec, Ligne_r_normal);
							send(New_Socket, MSG_Refus_Full.c_str(), MSG_Refus_Full.length(), 0);
							
							doevents(1000);
							Fermer_socket(New_Socket);
						}
						else
						{
						
							NbClientCO++;
							
							cpinti_dbg::CPINTI_DEBUG("Connexion accepte [" + IP_STR + ":" + PORT_STR + "] Socket #" + New_Socket_STR, 
													 "Accepted connection [" + IP_STR + ":" + PORT_STR + "] Socket #" + New_Socket_STR, 
													 "SRV:" + NumPort_STR, "", Ligne_reste, Alerte_ok, Date_avec, Ligne_r_normal);
								 
							// Ajouter le nouveau socket dans la liste 
							for (i = 0; i < NombreClients; i++)   
							{   
								// S'il y a une place de libre
								if( client_socket[i] == 0 )   
								{   
									client_socket[i] 			= New_Socket;   
									std::string i_STR			= std::to_string(i);
									
									NbClientCO_STR	= std::to_string(NbClientCO);
									
									client_IP[i] = std::string(IP_STR);
									client_PORT[i] = PORT;
									
									cpinti_dbg::CPINTI_DEBUG(" index:" + i_STR + " (" + NbClientCO_STR + "/" + NombreClients_STR + ")", 
															" index:" + i_STR + " (" + NbClientCO_STR + "/" + NombreClients_STR + ")", 
															"", "", Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);  
										 
									break;   
								}   
							}
							
							// Envoyer un message  
							// if( send(New_Socket, message, strlen(message), 0) != (ssize_t) strlen(message) )   
							// {   
								// Erreur_STR = std::string(strerror(errno));
								// cpinti_dbg::CPINTI_DEBUG(" [AVERTISSEMENT] Probleme lors de l'envoi du message. Raison:'" + Erreur_STR + "'", 
														 // " [WARNING] Problem during sending. Reason:'" + Erreur_STR + "'", 
														// "SRV:" + NumPort_STR, "Demarrer_serveur()", Ligne_saute, Alerte_avertissement, Date_avec, Ligne_r_normal);  
							// }   
						}
					}   

					for (i = 0; i < NombreClients; i++)   
					{   
						SocketClient = client_socket[i];   
							 
						if (FD_ISSET( SocketClient , &FD_socket))   
						{   
							std::string New_Socket_STR 	= std::to_string(SocketClient);
							std::string IP_STR 			= std::string(inet_ntoa(Sock_Adresse.sin_addr));
							std::string PORT_STR 		= std::to_string((int) ntohs(Sock_Adresse.sin_port));
							
							// Attendre que le socket se ferme, autrement receptionner les messages
							if ((TailleLue = read( SocketClient , buffer, TailleBuffer)) == 0)   
							{   								
								// Un client s'est barré.. On le ferme!
								getpeername(SocketClient , (struct sockaddr*)&Sock_Adresse , (socklen_t*)&Taille_Adresse);  

								NbClientCO--;
								
								std::string i_STR 			= std::to_string(i);
								NbClientCO_STR				= std::to_string(NbClientCO);
								
								cpinti_dbg::CPINTI_DEBUG("Deconnexion [" + IP_STR + ":" + PORT_STR + "] Socket #" + New_Socket_STR + " index " + i_STR + " (" + NbClientCO_STR + "/" + NombreClients_STR + ")", 
												 "Disconnection [" + IP_STR + ":" + PORT_STR + "] Socket #" + New_Socket_STR + " index " + i_STR + " (" + NbClientCO_STR + "/" + NombreClients_STR + ")", 
												 "SRV:" + NumPort_STR, "", Ligne_reste, Alerte_avertissement, Date_avec, Ligne_r_normal);
								
								Fermer_socket(SocketClient);   
								client_socket[i] = 0;   
							}   
							else 
							{   
								buffer[TailleLue] = '\0';  

								
								if(_TYPE_SERVEUR == 1) /* TCP */
									cpinti::cpinti_GEST_BUFF(NumPort, _STACK_STOCKER_POUR_CPCDOS, "#TCP " + IP_STR + ":" + PORT_STR + " TCP#" + New_Socket_STR + "=" + std::string(buffer)); 
								
								else if(_TYPE_SERVEUR == 2) /* UDP */
									cpinti::cpinti_GEST_BUFF(NumPort, _STACK_STOCKER_POUR_CPCDOS, "#UDP " + IP_STR + ":" + PORT_STR + " UDP#" + New_Socket_STR + "=" + std::string(buffer)); 
								
								else if(_TYPE_SERVEUR == 3) /* TCP CCP */
									cpinti::cpinti_GEST_BUFF(NumPort, _STACK_STOCKER_POUR_CPCDOS, "#CCP " + IP_STR + ":" + PORT_STR + " TCP#" + New_Socket_STR + "=" + std::string(buffer)); 
								
								else if(_TYPE_SERVEUR == 4) /* TCP TELNET */
									cpinti::cpinti_GEST_BUFF(NumPort, _STACK_STOCKER_POUR_CPCDOS, "#TEL " + IP_STR + ":" + PORT_STR + " TCP#" + New_Socket_STR + "=" + std::string(buffer)); 
								
								else if(_TYPE_SERVEUR == 5) /* ECHO TCP */
									cpinti::cpinti_GEST_BUFF(NumPort, _STACK_STOCKER_POUR_SERVEUR, "#ETC " + IP_STR + ":" + PORT_STR + " TCP#" + New_Socket_STR + "=" + std::string(buffer)); 
									
								else if(_TYPE_SERVEUR == 6) /* ECHO UDP */
									cpinti::cpinti_GEST_BUFF(NumPort, _STACK_STOCKER_POUR_CPCDOS, "#EUD " + IP_STR + ":" + PORT_STR + " UDP#" + New_Socket_STR + "=" + std::string(buffer)); 
								
								
							}   
						}   
					}      
				}
			}

			// Ok on stoppe
			Fermer_socket(SocketReseau);
			return SRV_OK;
	
		}
	}
}
	


