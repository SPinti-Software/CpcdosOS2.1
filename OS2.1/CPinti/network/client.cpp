/*	
	======================================
	==       CPinti ---> CLIENT TCP     ==
	======================================
	
	Developpe entierement par Sebastien FAVIER

	Description
		Module permettant de creer un client TCP/UDP multithread multi I/O
	
	Creation
		19/10/2016
		
	Reecriture
		02/11/2016
		29/11/2016
		11/07/2019

	Mise a jour
		13-AOUT-2020
		
		13-AOU-2020 : CORRECTION telechargement fichiers binaire (mauvaise condition) ~530
		21-MAR-2020 : Corrections pour les fichiers sans le header http "Content-Length:"
		12-MAR-2020 : Readaptation et correction pour la beta 1.2
		11-07-2019	: REFONTE COMPLETE
		07-12-2017	: AMELIORATION du code en suivant une procedure sticte de GCC
		14-02-2017	: Revue des includes et reception + envoie via le buffer cpcdos OK! ;)
	
*/
#include <netdb.h> 
#include <stdio.h> 
#include <stdlib.h> 
#include <string.h> 
#include <memory>

#include <sys/select.h>

#include <arpa/inet.h>
#include <netinet/in.h> 
#include <sys/types.h> 

#include <unistd.h>

#include "cpinti.h"
#include "func_cpi.h"
#include "debug.h"

// #include "core.h" // SectionCritique
// Exception de declaration due a une structure differente
namespace cpinti
{
	namespace gestionnaire_tache
	{ 
		void 				begin_SectionCritique		();
		void 				end_SectionCritique			();
	}
}
#define ENTRER_SectionCritique cpinti::gestionnaire_tache::begin_SectionCritique
#define SORTIR_SectionCritique cpinti::gestionnaire_tache::end_SectionCritique


#include <sys/socket.h> 

#include "client.h"
#include "stack.h"
#include "taches.h"
#include "buffer.h"

// #include "leakchk.h"#include "leakchk.h"


extern "C" void 		cpc_CCP_Exec_Commande			(const char* COMMANDE, int ID);


namespace cpinti
{
	namespace net_client
	{

		std::string Erreur_STR;
		
		std::string Resolution_DNS(std::string NomAdresse)
		{
			// Cette fonction permet de traduire une nom de domaine DESTINATION en adresse IP
			//  NomAdresse 	: Nom du serveur
			//	Retourne
			//		L'adresse IP associe au nom du serveur (DNS)

			struct in_addr **ListeAdresses;
			
			// Faire une requete DNS
			struct hostent * Host_DNS = gethostbyname(NomAdresse.c_str());
			
			// Tester si l'operation a fonctionnee
			if(Host_DNS==NULL)
			{
				// Stocker l'erreur dans un attribut membre de la classe qu'on pourrai recuperer
				Erreur_STR = std::string(strerror(errno));
				return "#ERR";
			}
			
			// Si oui, on recupere l'adresse IP
			ListeAdresses = (struct in_addr **)Host_DNS->h_addr_list;
			
			// Et on retourne l'adresse IP :-D
			return std::string((char*) inet_ntoa(*ListeAdresses[0]));
		}
		
		void Fermer_socket(long SocketReseau)
		{
			shutdown((int) SocketReseau, 2);
			close((int) SocketReseau);
		}
		
		
		long Taille_Contenu(long socket)
		{
			// Permet de recuperer la taille du contenu
			char c;
			char buff[1024] = "";
			char* ptr = buff + 4;
			
			int octets_recu;
			while((octets_recu = recv((int) socket, ptr, 1, 0)))
			{
				
				if(octets_recu==-1){
					perror("Parse Header");
					break;
				}

				if(
					(ptr[-3]=='\r')  && (ptr[-2]=='\n' ) &&
					(ptr[-1]=='\r')  && (*ptr=='\n' )
				) break;
				ptr++;
			}

			*ptr=0;
			ptr=buff+4;

			if(octets_recu){
				ptr=strstr(ptr,"Content-Length:");
				if(ptr){
					// sscanf(ptr,"%*s %d", &octets_recu);
					sscanf(ptr,"%*s %d", &octets_recu);

				}else
					octets_recu=-2; // Taille inconnue
			}
			
			
			return (int) octets_recu ;

		}

		long Demarrer_client(std::string AdresseIP, unsigned long _NumPort, unsigned long __NumeroID, long __TYPE_CLIENT)
		{
			// Cette fonction permet de creer un client
			//  _TYPE_CLIENT 	= TCP:1 / UDP:2
			//	AdresseIP		= AdresseIP de l'hote
			//  NumPort			= Numero de port
			//	_NumeroID_STR		= Numero d'itentification unique associe a un processus

			// Retourne :
			//	0	: OK
			// 	-1 	: 
			//	-2	: Erreur de configuration du socket
			//	-3	: Impossible de creer un socket (Driver manquant?)
			//	-4	: Erreur de binding
			//	-5	: Ecoute impossible
			//	-6	: Erreur de descripteur de fichier (select())
			//	-7	: Erreur de lecture de socket (ERRPIPE)
			//  -8	: Impossible de resoudre le nom (DNS)
			//	-9	: Memoire insuffisante
			
			unsigned int NumPort = (unsigned int) _NumPort;
			unsigned int _NumeroID = (unsigned int) __NumeroID;
			int _TYPE_CLIENT = (int) __TYPE_CLIENT;
			
			
			int SocketReseau, connfd; 
			int opt = 1;
			struct sockaddr_in servaddr, cli; 
			struct timeval 	TempsMAX;				// Temps de delai
			fd_set FD_socket;
			int FD_MAX;   
			unsigned int NB_Message_SENT = 0;
			unsigned int NB_Message_RECEIVE = 0;
			bool Simple_TrameHTTP = false;
			
			int CompteurDoevents;
			char* _Commande_CpcdosCP = (char*) malloc(sizeof(char) * 128);
			std::string AdresseIP_DNS = "";
			std::string _NumeroID_STR = std::to_string(_NumeroID);
			std::string NumPort_STR = std::to_string(NumPort);
			
			/******************************************************************/
			/********************** CREATION D'UN SOCKET **********************/
			/******************************************************************/
			
			cpinti_dbg::CPINTI_DEBUG("Configuration du socket ", 
										 "Socket configuration ",
										 "CLT:" + _NumeroID_STR, "Demarrer_client()", Ligne_reste, Alerte_action, Date_avec, Ligne_r_normal);

			// socket create and varification 
			if( (SocketReseau = socket(AF_INET , SOCK_STREAM, 0)) == 0)   
			{ 
				Erreur_STR = std::string(strerror(errno));
				cpinti_dbg::CPINTI_DEBUG("[ERREUR] Impossible de creer le socket. Raison:'" + Erreur_STR + "'", 
										 "[ERROR] Unable to create socket. Reason:'" + Erreur_STR + "'", 
										 "", "", Ligne_saute, Alerte_erreur, Date_sans, Ligne_r_normal);
				return (long) CLIENT_ERR_INIT_SOCK;
			} 
			
			cpinti_dbg::CPINTI_DEBUG(".", ".",
							"", "", Ligne_reste, Alerte_action, Date_sans, Ligne_r_normal);
			

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
										"", "", Ligne_saute, Alerte_erreur, Date_sans, Ligne_r_normal);
				return (long)CLIENT_ERR_INIT_SOCK;
			}
			
			cpinti_dbg::CPINTI_DEBUG(".", ".",
							"", "", Ligne_reste, Alerte_action, Date_sans, Ligne_r_normal);
			
			cpinti_dbg::CPINTI_DEBUG("[OK]", "[OK]",
								"", "", Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);

								
			/******************************************************************/
			/************************ RESOLUTION DNS **************************/
			/******************************************************************/
			
			cpinti_dbg::CPINTI_DEBUG("Tentative de resolution du nom '" + AdresseIP + "' ... ",
									"Attempt to resolve the name '" + AdresseIP + "' ... ",
									"DNS", "Demarrer_client()", Ligne_reste, Alerte_action, Date_avec, Ligne_r_normal);
			
			std::string DNS_Resultat =  Resolution_DNS(AdresseIP);
	
			if(DNS_Resultat.compare("#ERR")==0)
			{
				cpinti_dbg::CPINTI_DEBUG("[ERREUR] Impossible de resoudre le nom de serveur\n Raison '" + Erreur_STR + "'", 
					"[ERROR] Unable to resolve name server\n Reason '" + Erreur_STR + "'",
					"", "", Ligne_saute, Alerte_erreur, Date_sans, Ligne_r_normal);
					
				return (long)CLIENT_ERR_NOM_DNS; // Impossible de resoudre le nom
			}
			
			AdresseIP_DNS = AdresseIP;
			AdresseIP = DNS_Resultat;
			
			cpinti_dbg::CPINTI_DEBUG(" [OK] --> " + DNS_Resultat, 
						" [OK] --> " + DNS_Resultat,
						"", "", Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
						
			
			/******************************************************************/
			/*********************** BINGAGE DU SOCKET  ***********************/
			/******************************************************************/

			cpinti_dbg::CPINTI_DEBUG("Binding socket ",
									"Socket binding ",
									"CLT:" + _NumeroID_STR, "Demarrer_client()", Ligne_reste, Alerte_action, Date_avec, Ligne_r_normal);
										
			bzero(&servaddr, sizeof(servaddr)); 
			
			cpinti_dbg::CPINTI_DEBUG(".", ".",
								"", "", Ligne_reste, Alerte_action, Date_sans, Ligne_r_normal);
		  
			// assign IP, PORT 
			servaddr.sin_family = AF_INET; 
			servaddr.sin_addr.s_addr = inet_addr(AdresseIP.c_str()); 
			servaddr.sin_port = htons(NumPort); 
			
			cpinti_dbg::CPINTI_DEBUG(".. ", ".. ",
								"", "", Ligne_reste, Alerte_action, Date_sans, Ligne_r_normal);
				
			cpinti_dbg::CPINTI_DEBUG("[OK]", "[OK]",
								"", "", Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
				
			
			
			/******************************************************************/
			/********************* CONNEXION AU SERVEUR ***********************/
			/******************************************************************/
			
			
			
			cpinti_dbg::CPINTI_DEBUG("Connexion au serveur '" + AdresseIP + ":" + NumPort_STR + "' (" + AdresseIP_DNS + ") ... ",
									"Connection to server '" + AdresseIP + ":" + NumPort_STR + "' (" + AdresseIP_DNS + ") ... ",
									"CLT:" + _NumeroID_STR, "Demarrer_client()", Ligne_reste, Alerte_action, Date_avec, Ligne_r_normal);
		  
			// connect the client socket to server socket 
			if (connect(SocketReseau, (const sockaddr*)&servaddr, sizeof(servaddr)) != 0)
			{ 
				Erreur_STR = std::string(strerror(errno));
				cpinti_dbg::CPINTI_DEBUG("[ERREUR] Impossible de se connecter au serveur '" + AdresseIP + ":" + NumPort_STR + "' Raison:'" + Erreur_STR + "'", 
										 "[ERROR] Unable connect to server '" + AdresseIP + ":" + NumPort_STR + "' Reason:'" + Erreur_STR + "'", 
										"", "", Ligne_saute, Alerte_erreur, Date_sans, Ligne_r_normal);
				return (long)CLIENT_ERR_CONNECTION;
			} 
			
			cpinti_dbg::CPINTI_DEBUG("[OK]", "[OK]",
								"", "", Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
		  
			bool Fichier_TEMP_FERME = false;
			bool EN_VIE = true;
			int Resultat = 0;
			int TailleLue = 0;
			std::string SocketReseau_STR = std::to_string(SocketReseau);
			
			std::string STACK_MEMOIRE_STR = "";
			char buffer[TailleBuffer+1]; 
			std::string Fichier_TEMP_STR = "";
			
			char* VAR_PROGRESSION;
			bool var_progression = false;
			
			char* VAR_SPEED;
			bool var_speed = false;
			
			char* VAR_SIZE;
			bool var_size = false;
			
			char* VAR_SOCKET;
			bool var_socket = false;
			
			
			
			cpinti_dbg::CPINTI_DEBUG("Client TCP lance!", "TCP Client in execution!",
								"CLT:" + _NumeroID_STR, "", Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
			
			while(EN_VIE)
			{
				
				if(CompteurDoevents == 0) doevents(5000);
				
				CompteurDoevents = 0;
				
				// On recupere les donnees du buffer
				STACK_MEMOIRE_STR = cpinti::cpinti_GEST_BUFF(__NumeroID, _STACK_EXTRACT_POUR_SERVEUR, "");

				// S'il y a quelque chose
				if(STACK_MEMOIRE_STR.length() > 0)
				{
					
					std::string BUFFER = STACK_MEMOIRE_STR;
			
					if(BUFFER == "#STOP") 
					{
						cpinti_dbg::CPINTI_DEBUG("Fermeture du client a la demande du noyau ...", 
												"Closing client at the request of the kernel ...",
												"", "", Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);

						EN_VIE = false;
					}
					
					// Liberer le CPU pendant 200 ms
					else if(BUFFER == "#DOEVENTS") 
					{
						doevents(280395);
					}
					
					// Configurer le tampon memoire morte 
					if(BUFFER.find("#CFG_TMPFILE ") != std::string::npos)
					{
						
						size_t posCFG = BUFFER.find("#CFG_TMPFILE ");

						Fichier_TEMP_STR = BUFFER.substr(posCFG+13);
						
						cpinti_dbg::CPINTI_DEBUG("Definition d'un fichier tempon memoire '" + Fichier_TEMP_STR + "'",
												 "File buffer defined to '" + Fichier_TEMP_STR + "'",
												"CLT:" + _NumeroID_STR, "", Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
												
						Fichier_TEMP_FERME = false;
						BUFFER = "";
						
					}
					
					if(BUFFER.find("#CFG_VAR_POURCENT ") != std::string::npos)
					{
						
						size_t posCFG = BUFFER.find("#CFG_VAR_POURCENT ");

						VAR_PROGRESSION = (char*) (BUFFER.substr(posCFG+18).c_str());
						
						cpinti_dbg::CPINTI_DEBUG("STATS : Definition variable progression en poucentage '" + std::string(VAR_PROGRESSION) + "'",
												 "STATS : Variable definition in pourcent '" + std::string(VAR_PROGRESSION) + "'",
												"CLT:" + _NumeroID_STR, "", Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);

						BUFFER = "";
						var_progression = true;
					}
					
					if(BUFFER.find("#CFG_VAR_SPEED ") != std::string::npos)
					{
						
						size_t posCFG = BUFFER.find("#CFG_VAR_SPEED ");

						VAR_SPEED = (char*) (BUFFER.substr(posCFG+15).c_str());
						
						cpinti_dbg::CPINTI_DEBUG("STATS : Definition variable octets par secondes '" + std::string(VAR_SPEED) + "'",
												 "STATS : Variable bytes per sec '" + std::string(VAR_SPEED) + "'",
												"CLT:" + _NumeroID_STR, "", Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
												
						BUFFER = "";
						var_speed = true;
						
					}
					
					if(BUFFER.find("#CFG_VAR_SIZE ") != std::string::npos)
					{
						
						size_t posCFG = BUFFER.find("#CFG_VAR_SIZE ");

						VAR_SIZE = (char*) (BUFFER.substr(posCFG+14).c_str());
						
						cpinti_dbg::CPINTI_DEBUG("STATS : Definition variable octets copies '" + std::string(VAR_SIZE) + "'",
												 "STATS : Variable definition for copied bytes'" + std::string(VAR_SIZE)+ "'",
												"CLT:" + _NumeroID_STR, "", Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
												
						BUFFER = "";
						var_size = true;
					}
					
					if(BUFFER.find("#CFG_VAR_SOCKET ") != std::string::npos)
					{
						
						size_t posCFG = BUFFER.find("#CFG_VAR_SOCKET ");

						VAR_SOCKET = (char*) (BUFFER.substr(posCFG+16).c_str());
						
						cpinti_dbg::CPINTI_DEBUG("STATS : Definition variable socket'" + std::string(VAR_SIZE) + "'",
												 "STATS : Variable definition for socket '" + std::string(VAR_SIZE)+ "'",
												"CLT:" + _NumeroID_STR, "", Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
								
						sprintf(_Commande_CpcdosCP, "FIX/ %s = %d", VAR_SOCKET, _NumeroID);
						cpc_CCP_Exec_Commande(_Commande_CpcdosCP, 5);
						
						
						BUFFER = "";
						var_socket = true;
					}
						
					/*** ----------------------------------------------------------- ***/
					
					// Envoyer un message a 1 client precis
					if(BUFFER.find("#SRV ") != std::string::npos)
					{
					
						size_t posSRV = BUFFER.find("#SRV ");

						BUFFER = BUFFER.substr(posSRV+5);
						std::string BUFFER_length_STR = std::to_string(BUFFER.length());
						
						// Si la premiere trame est bien une trame HTTP
						// Et qu'il demande la fermeture de la connexion pour la requete
						if(NB_Message_SENT == 0)
						{
							if(BUFFER.find("HTTP/1.") != std::string::npos)
							{
								if(BUFFER.find("Host:") != std::string::npos)
								{
									if(BUFFER.find("Connection: close") != std::string::npos)
									{
										Simple_TrameHTTP = true;

									}
								}
							}
						}
						
						cpinti_dbg::CPINTI_DEBUG("Envoi de " + BUFFER_length_STR + " octets au serveur [" + AdresseIP + ":" + NumPort_STR + "] Socket #" + SocketReseau_STR + " ... ", 
												 "Sending " + BUFFER_length_STR + " bytes to [" + AdresseIP + ":" + NumPort_STR + "] Socket #" + SocketReseau_STR + " ... ",
												 "CLT:" + _NumeroID_STR, "", Ligne_reste, Alerte_action, Date_avec, Ligne_r_normal);
															 
						send(SocketReseau, BUFFER.c_str(), (ssize_t) BUFFER.length(), MSG_DONTWAIT );
						
						// Nombre de messages envoyes
						NB_Message_SENT++;
						
						cpinti_dbg::CPINTI_DEBUG("[OK]", "[OK]",
							"", "", Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
					
					}
				}
				
				// Nettoyer le socket
				FD_ZERO(&FD_socket);   
					 
				// Ajouter le SocketReseau
				FD_SET(SocketReseau, &FD_socket);   
				FD_MAX = SocketReseau;  
				
				Resultat = select(FD_MAX + 1, &FD_socket, NULL, NULL, &TempsMAX);   
				
				doevents(0);
				
				if ((Resultat < 0) && (errno!=EINTR))   
				{   
					Erreur_STR = std::string(strerror(errno));
					cpinti_dbg::CPINTI_DEBUG("[AVERTISSEMENT] Probleme de socket. Raison:'" + Erreur_STR + "'", 
								"[WARNING] Socket problem. Reason:'" + Erreur_STR + "'", 
								"CLT:" + NumPort_STR, "Demarrer_serveur()", Ligne_saute, Alerte_avertissement, Date_avec, Ligne_r_normal);
				}   

				// Il y a eu quelque chose! Oh My GOD!
				if (FD_ISSET(SocketReseau, &FD_socket))   
				{  
					int TailleContenu = 0;
					char* buffer_recu = NULL;
					
					// Si c'est une trame HTTP
					if(Simple_TrameHTTP == true)
					{
																
						// Recuperer la taille du contenu du fichier source
						TailleContenu = Taille_Contenu(SocketReseau);
						
						std::string Taille_Contenu_STR = std::to_string(TailleContenu);
						cpinti_dbg::CPINTI_DEBUG("Content-Length:" + Taille_Contenu_STR,
												"Content-Length:" + Taille_Contenu_STR,
					
													"CLT:" + _NumeroID_STR, "", Ligne_saute, Alerte_action, Date_avec, Ligne_r_normal);
					
					
						if(TailleContenu == -2) 
						{
							TailleContenu = 1026;
						}
						else
						{
							cpinti_dbg::CPINTI_DEBUG("Content-Length:" + Taille_Contenu_STR,
													 "Content-Length:" + Taille_Contenu_STR,
													"CLT:" + _NumeroID_STR, "", Ligne_saute, Alerte_action, Date_avec, Ligne_r_normal);
						}
						
						
						if((TailleContenu > 0) || ((Fichier_TEMP_STR != "") && (Fichier_TEMP_FERME == false)))
						{
							unsigned int TailleFichier 		= (unsigned int) TailleContenu;
							unsigned int Position 			= 0;
							unsigned int NombreOctets 		= 0;
							unsigned int NombreOctetsParSec = 0;
							unsigned int TempsPasse 		= 0;
							
							double valeur					= 0;
							double vitesse					= 0;

							clock_t	TempsDebut;
							clock_t	TempsFin;
							
							FILE* FD_fichiertemp;

							int Octets = 0;
							int octets_recu = 0;
							std::string octets_STR = "0";

							
							// Ecrire seulement si fichier definit
							if(Fichier_TEMP_STR != "")
							{
								cpinti_dbg::CPINTI_DEBUG("Creation du fichier '" + Fichier_TEMP_STR + "' ...",
													 "Creating file '" + Fichier_TEMP_STR + "' ...",
													"CLT:" + _NumeroID_STR, "", Ligne_reste, Alerte_action, Date_avec, Ligne_r_normal);
													
								FD_fichiertemp = fopen(Fichier_TEMP_STR.c_str(),"wb");
								buffer_recu = (char*) calloc(strlen(Fichier_TEMP_STR.c_str()) + 16, sizeof(char));
								sprintf(buffer_recu, "#BINARY FILE# %s", Fichier_TEMP_STR.c_str());
								
								cpinti_dbg::CPINTI_DEBUG("[OK]",
															 "[OK]",
															"", "", Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
								// EXCEPTION !!
								cpinti::cpinti_GEST_BUFF(__NumeroID, _STACK_STOCKER_POUR_CPCDOS, "#TCP " + AdresseIP + ":" + NumPort_STR + " TCP#" + SocketReseau_STR + "=" + std::string(buffer_recu)); 
								doevents(20000);
							}
							else
								buffer_recu = (char*) calloc((size_t) TailleContenu+64, sizeof(char));
							
							
							// !!! #BINARY FILE NEST JAMAIS VISIBLE DEPUIS le HTTP_get en CPC !!!
							
							cpinti_dbg::CPINTI_DEBUG("Tentative de reception des donnees...",
													 "Attempt to receive data...",
													"CLT:" + _NumeroID_STR, "", Ligne_saute, Alerte_action, Date_avec, Ligne_r_normal);
							fflush(stdout);
							ENTRER_SectionCritique();
							while((octets_recu = recv(SocketReseau, buffer, 8192, 0)))
							{
					
								// ENTRER_SectionCritique();
								if(octets_recu < 0)
								{
									perror("recieve");
									break;
								}

								
								if(Fichier_TEMP_STR != "")
								{
									if(cpinti_dbg::DEBUG_ENABLED == true)
									{
										std::string octets_recu_STR = std::to_string(octets_recu);
										std::string buffer_STR = std::string(buffer);
										cpinti_dbg::CPINTI_DEBUG("Ecriture '" + buffer_STR + "' taille:" + octets_recu_STR,
															 "Writing '" + buffer_STR + "' size:" + octets_recu_STR,
													"CLT:" + _NumeroID_STR, "", Ligne_reste, Alerte_action, Date_avec, Ligne_r_normal);
									}
									
									
									
									// Corriger crash repertoires non crees!
									fwrite(buffer, 1, (size_t) octets_recu, FD_fichiertemp);
									
									if(cpinti_dbg::DEBUG_ENABLED == true)
									{
										std::string octets_recu_STR = std::to_string(octets_recu);
										std::string buffer_STR = std::string(buffer);
										cpinti_dbg::CPINTI_DEBUG("[OK]",
															 "[OK]",
															"", "", Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
									}
								}
								else
									strcat(buffer_recu, buffer);
								
								Octets += octets_recu;
								
								if (Octets >= 1)
									NombreOctets = (unsigned int) Octets;
								
								
								if(cpinti_dbg::DEBUG_ENABLED == true)
								{
									cpinti_dbg::CPINTI_DEBUG(std::to_string(Octets) + " octets recu sur " + Taille_Contenu_STR,
														 std::to_string(NombreOctets) + " received bytes on " + Taille_Contenu_STR,
														"CLT:" + _NumeroID_STR, "", Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
								}
								if(true)
								{
									// Cette partie va permettre d'alleger le CPU
									if(CompteurDoevents >= 6)
									// if(true)
									{
										CompteurDoevents = 0;
										SORTIR_SectionCritique();
										doevents(0);
										
										STACK_MEMOIRE_STR = cpinti::cpinti_GEST_BUFF(__NumeroID, _STACK_EXTRACT_POUR_SERVEUR, "");
										if(STACK_MEMOIRE_STR == "#STOP") 
										{
											cpinti_dbg::CPINTI_DEBUG("Fermeture du client en telechargement a la demande du noyau ...", 
																	"Closing client during downloading at the request of the kernel ...",
																	"", "", Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);

											EN_VIE = false;
											break;
										}
					
										ENTRER_SectionCritique();
										
										if (NombreOctets < 1) NombreOctets = 1;
										
										
										/** PROGRESSION EN POURCENTAGE **/
										if((var_progression == true) && (strlen(VAR_PROGRESSION) > 1))
										{

											valeur = ((double) NombreOctets / (double) TailleFichier) * 100;
											sprintf(_Commande_CpcdosCP, "FIX/ %s = /F:CPC.INT(%f)", VAR_PROGRESSION, valeur);
											cpc_CCP_Exec_Commande(_Commande_CpcdosCP, 5);
										}
										
										/** NOMBRE D'OCTETS COPIES **/
										if((var_size == true) && (strlen(VAR_SIZE) > 1))
										{

											valeur = (double) NombreOctets;
											sprintf(_Commande_CpcdosCP, "FIX/ %s = /F:CPC.INT(%f)", VAR_SIZE, valeur);
											cpc_CCP_Exec_Commande(_Commande_CpcdosCP, 5);
										}
									
										if(vitesse > 1)
										{
											/** NOMBRE D'OCTETS PAR SECONDES **/
											if((var_speed == true) && (strlen(VAR_SPEED) > 1))
											{
	
												sprintf(_Commande_CpcdosCP, "FIX/ %s = /F:CPC.INT(%f)", VAR_SPEED, vitesse);
												cpc_CCP_Exec_Commande(_Commande_CpcdosCP, 5);
												vitesse = 0;
											}
										}

									} else
										CompteurDoevents++;
									
									
									Position++;
							
									NombreOctetsParSec += (unsigned int) octets_recu;
				
									
									if((var_speed == true) && (strlen(VAR_SPEED) > 1))
									{
										TempsFin = clock();

										TempsPasse = (unsigned int) ((TempsFin - TempsDebut)/CLOCKS_PER_SEC);
				
										if(TempsPasse > 1)
										{
											TempsDebut = clock();
											
											// NOMBRE D'OCTETS PAR SECONDES
											
											vitesse = (double) NombreOctetsParSec;
											NombreOctetsParSec = 0;
										}
									}
									
								}

								SORTIR_SectionCritique();
						
								_Commande_CpcdosCP[0] = '\0';
									
								if(octets_recu <= 0) break;
								if(Octets == TailleContenu) break;
							}
							
							// SORTIR_SectionCritique();
							
							if(Fichier_TEMP_STR != "")
							{
								cpinti_dbg::CPINTI_DEBUG("Fermeture fichier",
													 "Fermeture fichier",
													"CLT:" + _NumeroID_STR, "", Ligne_saute, Alerte_action, Date_avec, Ligne_r_normal);
								
								Fichier_TEMP_FERME = true;
								fclose(FD_fichiertemp);
								
								// Uniquement si le thread ne se ferme pas
								if(EN_VIE == true)
								{
									// Fermer a 100% Car il est possible que les loop se breakent qu'au 100%
									if((var_progression == true) && (strlen(VAR_PROGRESSION) > 1))
									{

										valeur = 100;
										sprintf(_Commande_CpcdosCP, "FIX/ %s = /F:CPC.INT(%f)", VAR_PROGRESSION, valeur);
										cpc_CCP_Exec_Commande(_Commande_CpcdosCP, 5);
									}
									
									/** NOMBRE D'OCTETS COPIES **/
									if((var_size == true) && (strlen(VAR_SIZE) > 1))
									{

										valeur = (double) NombreOctets;
										sprintf(_Commande_CpcdosCP, "FIX/ %s = /F:CPC.INT(%f)", VAR_SIZE, valeur);
										cpc_CCP_Exec_Commande(_Commande_CpcdosCP, 5);
									}
								}
								
								doevents(100000);
							}
						}
					} // Simple_TrameHTTP
					
					
						
					if ((TailleContenu == 0) && (TailleLue = read(SocketReseau , buffer, TailleBuffer) == 0))
					{
						cpinti_dbg::CPINTI_DEBUG("Le serveur a ferme la connexion.",
												 "Server has close connection.",
												"CLT:" + _NumeroID_STR, "", Ligne_saute, Alerte_avertissement, Date_sans, Ligne_r_normal);
						EN_VIE = false;
					}
					else
					{

						
						if(NB_Message_RECEIVE < 4200000000) /* anti-crash*/
							NB_Message_RECEIVE++;
						
						// Version HTTP
						if((buffer == NULL) || ((Simple_TrameHTTP == true) && (Fichier_TEMP_STR != "")))
						{
												
							if(_TYPE_CLIENT == 1) /* TCP */
								cpinti::cpinti_GEST_BUFF(__NumeroID, _STACK_STOCKER_POUR_CPCDOS, "#TCP " + AdresseIP + ":" + NumPort_STR + " TCP#" + SocketReseau_STR + "=" + std::string(buffer_recu)); 
								
							else if(_TYPE_CLIENT == 2) /* UDP */
								cpinti::cpinti_GEST_BUFF(__NumeroID, _STACK_STOCKER_POUR_CPCDOS, "#UDP " + NumPort_STR + ":" + NumPort_STR + " UDP#" + SocketReseau_STR + "=" + std::string(buffer_recu)); 
						}
						else
						{
												
							// Version NON-HTTP
							if(_TYPE_CLIENT == 1) /* TCP */
								cpinti::cpinti_GEST_BUFF(__NumeroID, _STACK_STOCKER_POUR_CPCDOS, "#TCP " + AdresseIP + ":" + NumPort_STR + " TCP#" + SocketReseau_STR + "=" + std::string(buffer)); 
								
							else if(_TYPE_CLIENT == 2) /* UDP */
								cpinti::cpinti_GEST_BUFF(__NumeroID, _STACK_STOCKER_POUR_CPCDOS, "#UDP " + NumPort_STR + ":" + NumPort_STR + " UDP#" + SocketReseau_STR + "=" + std::string(buffer)); 
						}
					}
				}
			} 
		  
			// Fermer le socket
			Fermer_socket(SocketReseau); 
			return (long)CLIENT_OK;
		}
	}
}

