/*	
	======================================
	==       CPinti ---> PING ICMP      ==
	======================================
	
	Developpe entierement par Sebastien FAVIER

	Description
		Module permettant de pinger une machine sur le reseau
		Utilise le protocole ICMP.
	
	Creation
		19/10/2016
		
	Reecriture
		02/11/2016

	Mise a jour
		29/01/2018
		
		29-01-2018	: CORRECTION du calcul du temps qui etait basé sur la trame reçue et non la trame d'envoie
		07-12-2017	: AMELIORATION du code en suivant une procedure sticte de GCC
		05-01-2017  : Correction du probleme de reception de la trame (return mal place)
					: Correction des 4 octets en trop dans la trame 
						memcpy(&PAQUET_ICMP[TAILLE_ICMP_HDR+TAILLE_Temps_Debut+TAILLE_PAQUET_ENVOYE##-4##] --> "-4" supprime!

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

#include <netinet/ip_icmp.h>

#include <pthread.h>

#include "Func_cpi.h"

#include "debug.h"
#include "ping.h"

// #include "leakchk.h"


#define MSG_NOSIGNAL	0x4000 	// Ne pas generer un SIGPIPE.
#define TCP_NODELAY     0x01

#define _w32_intel 		cpinti::Func_Cpinti::_w32_intel
#define _w32_intel16 	cpinti::Func_Cpinti::_w32_intel16

extern "C" void __real_sleep (int secondes);

namespace cpinti
{
	namespace net_ping
	{
		std::string Erreur_STR;
		
		void Fermer_socket(int SocketReseau)
		{
			shutdown(SocketReseau, 2);
			close(SocketReseau);
		}
		
		
		const char* Resolution_DNS (const char *NomAdresse)
		{
			// https://gist.github.com/jirihnidek/bf7a2363e480491da72301b228b35d5d
			struct addrinfo hints, *res;
			int errcode;
			char addrstr[100];
			void *ptr = NULL;
			const char* AdresseFinal = (const char*) malloc(16);
			
			memset (&hints, 0, sizeof (hints));
			hints.ai_family = PF_UNSPEC;
			hints.ai_socktype = SOCK_STREAM;
			hints.ai_flags |= AI_CANONNAME;

			errcode = getaddrinfo (NomAdresse, NULL, &hints, &res);
			if (errcode != 0)
			{
				Erreur_STR = std::string(strerror(errno));
				printf("\n Erreur_STR : '%s'\n", strerror(errno));
				return "#ERR";
			}


			// if(strcmp(NomAdresse, "127.0.0.1")) doevents(1000);
			inet_ntop (res->ai_family, res->ai_addr->sa_data, addrstr, 100);

			switch (res->ai_family)
			{
				case AF_INET:
					ptr = &((struct sockaddr_in *) res->ai_addr)->sin_addr;
					break;
				case AF_INET6:
					ptr = &((struct sockaddr_in6 *) res->ai_addr)->sin6_addr;
					break;
				default:
					break;
			}

			inet_ntop (res->ai_family, ptr, addrstr, 100);
			// printf ("IPv%d address: %s (%s)\n", );
			
			AdresseFinal = (res->ai_family == PF_INET6 ? 6 : 4, addrstr, res->ai_canonname);
			return AdresseFinal;
		}
		
		
		const char* Resolution_DNS(const char* NomAdresse, struct hostent* Sock_hostent)
		{

			// Cette fonction permet de traduire une nom de domaine DESTINATION en adresse IP
			//  NomAdresse 	: Nom du serveur
			//	Retourne
			//		L'adresse IP associe au nom du serveur (DNS)

			struct in_addr **ListeAdresses;
			const char* AdresseLst;
			
			// Faire une requete DNS
			Sock_hostent = gethostbyname(NomAdresse);
			
			// Tester si l'operation a fonctionnee
			if(Sock_hostent==NULL)
			{
				// Stocker l'erreur dans un attribut membre de la classe qu'on pourrai recuperer
				Erreur_STR = std::string(strerror(errno));
				printf("\n Erreur_STR : '%s'\n", strerror(errno));
				return "#ERR";
			}
			
			// Si oui, on recupere l'adresse IP
			ListeAdresses = (struct in_addr **)Sock_hostent->h_addr_list;
			
			AdresseLst = (const char*) inet_ntoa(*ListeAdresses[0]);
			
			// Et on retourne l'adresse IP :-D
			return AdresseLst;
		}
		
		int ping(const char* AdresseIP, const char* Message, int Timeout)
		{
			
			
			
			std::string AdresseIP_STR = std::string(AdresseIP);
			cpinti_dbg::CPINTI_DEBUG("Ping vers " + AdresseIP_STR, 
									"Ping to " + AdresseIP_STR,
						"net_ping", "ping()", Ligne_saute, Alerte_action, Date_avec, Ligne_r_normal);
		
			
			cpinti_dbg::CPINTI_DEBUG(" * Configuration du socket reseau... ", 
				 " * Configuration network socket... ",
					"net_ping", "ping()", Ligne_reste, Alerte_action, Date_avec, Ligne_r_normal);

					
			/******************************************************************/
			/**************************** PREAMBULE ***************************/
			/******************************************************************/
			// Configurer le delai
			struct timeval	Temps_Depart;
			struct timeval	Temps_Actuel;
			struct timeval 	Temps_Envoie;
			struct timezone	Temps_Zone;
			
			struct timeval 	TempsMAX;
			TempsMAX.tv_sec = 0;
			TempsMAX.tv_usec = 5;
		
			
			int Delai_ms = 5;
			
			int Resultat;
			
			// Configrer le type de socket
			int Sock_Famille 			= AF_INET; 
			int Sock_Type 				= SOCK_RAW; 
			int Sock_Protocol 			= IPPROTO_ICMP;
			
			// Configurer les options du socket
			int Sock_Niveau 			= SOL_SOCKET;
			int Sock_Option				= 0;
			void* Sock_Option_VAL 		= (char *)&TempsMAX;
			int Sock_Option_TAILLE		= sizeof(TempsMAX);
			 
			// Configuration du socket
			int SocketReseau;
			struct hostent *Sock_hostent = {0};			// Information IPv4 a propos de l'host
			struct sockaddr_in Sock_sockaddr;		// Structure du sock INTERNET
			struct sockaddr_in Sock_sockaddr_REP;	// Structure du sock CLIENT
			
			const char* Retour_DNS;
			
			/******************************************************************/
			/********************** CREATION D'UN SOCKET **********************/
			/******************************************************************/
			
			SocketReseau = socket(Sock_Famille, Sock_Type, Sock_Protocol);
			
			if(SocketReseau < 0)
			{
				//Stocker l'erreur dans un attribut membre de la classe qu'on pourrai recuperer
				Erreur_STR = std::string(strerror(errno));
				cpinti_dbg::CPINTI_DEBUG(" [ERREUR] Impossible de creer un socket RECEIVE. Raison:'" + Erreur_STR + "'", 
										 " [ERROR] Unable to create socket. Reason:'" + Erreur_STR + "'", 
					"net_ping", "ping()", Ligne_saute, Alerte_erreur, Date_avec, Ligne_r_normal);
				return PING_ERR_INIT_SOCK;
			}
		
		
			
			/******************************************************************/
			/******************** CONFIGURATION DU SOCKET *********************/
			/******************************************************************/
			Sock_Option = SO_RCVTIMEO; // Configurer la reception
			
			if(setsockopt(SocketReseau, Sock_Niveau, Sock_Option, Sock_Option_VAL, Sock_Option_TAILLE) == -1)
			{
				
				Erreur_STR = std::string(strerror(errno));
				cpinti_dbg::CPINTI_DEBUG(" [ERREUR] Impossible de configurer le socket RECEIVE. Raison:'" + Erreur_STR + "'", 
										 " [ERROR] Unable to configure RECEIVE socket. Reason:'" + Erreur_STR + "'", 
					"net_ping", "ping()", Ligne_saute, Alerte_erreur, Date_avec, Ligne_r_normal);
					
				Fermer_socket(SocketReseau);

				return PING_ERR_CONFIG_SOCK;
			}

			Sock_Option = SO_SNDTIMEO; // Configurer l'envoi
			
			if(setsockopt(SocketReseau, Sock_Niveau, Sock_Option, Sock_Option_VAL, Sock_Option_TAILLE) == -1)
			{
				Erreur_STR = std::string(strerror(errno));
				cpinti_dbg::CPINTI_DEBUG(" [ERREUR] Impossible de configurer le socket SEND. Raison:'" + Erreur_STR + "'", 
										 " [ERROR] Unable to configure SEND socket. Reason:'" + Erreur_STR + "'", 
					"net_ping", "ping()", Ligne_saute, Alerte_erreur, Date_avec, Ligne_r_normal);
				Fermer_socket(SocketReseau);

				return PING_ERR_CONFIG_SOCK;
			}
			
			int flag = 1; 
			if(setsockopt(SocketReseau, Sock_Niveau, TCP_NODELAY, (char *) &flag, sizeof(int)) == -1)
			{
				Erreur_STR = std::string(strerror(errno));
				cpinti_dbg::CPINTI_DEBUG(" [ERREUR] Impossible de configurer le socket. Raison:'" + Erreur_STR + "'", 
										 " [ERROR] Unable to configure socket. Reason:'" + Erreur_STR + "'", 
					"net_ping", "ping()", Ligne_saute, Alerte_erreur, Date_avec, Ligne_r_normal);
				Fermer_socket(SocketReseau);
				return PING_ERR_CONFIG_SOCK;
			}
			cpinti_dbg::CPINTI_DEBUG("[OK]", "[OK]", "", "", Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);

			
			
			
			/******************************************************************/
			/************************* RESOLUTION DNS *************************/
			/******************************************************************/
			cpinti_dbg::CPINTI_DEBUG(" * Resolution DNS si possible de '" + AdresseIP_STR + "'... ", 
				 " * DNS resolution if possible '" + AdresseIP_STR + "'... ",
					"net_ping", "ping()", Ligne_reste, Alerte_action, Date_avec, Ligne_r_normal);

	
			AdresseIP_STR = std::string(Resolution_DNS(AdresseIP, Sock_hostent));

			// AdresseIP_STR = std::string(AdresseIP);

			if(AdresseIP_STR == "#ERR")
			{
				cpinti_dbg::CPINTI_DEBUG(" [ERREUR] Impossible de resoudre le DNS '" + AdresseIP_STR + "'. Raison:'" + Erreur_STR + "'", 
				 " [ERROR] Unable to resolve DNS '" + AdresseIP_STR + "'. Reason:'" + Erreur_STR + "'", 
					"", "", Ligne_saute, Alerte_erreur, Date_sans, Ligne_r_normal);
				Fermer_socket(SocketReseau);
				return PING_ERR_NOM_DNS;
			}


			cpinti_dbg::CPINTI_DEBUG(" [OK] --> " + AdresseIP_STR, 
						" [OK] --> " + AdresseIP_STR,
						"", "", Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
			
			
			
			
			/******************************************************************/
			/*********************** BINGAGE DU SOCKET  ***********************/
			/******************************************************************/
			
			Sock_hostent = gethostbyname(AdresseIP_STR.c_str());
			
			cpinti_dbg::CPINTI_DEBUG("Binding socket ",
									"Socket binding ",
									"net_ping", "ping()", Ligne_reste, Alerte_action, Date_avec, Ligne_r_normal);
			
			bzero((char *) &Sock_sockaddr, sizeof(Sock_sockaddr));
			
			cpinti_dbg::CPINTI_DEBUG(".", ".",
								"", "", Ligne_reste, Alerte_action, Date_sans, Ligne_r_normal);
			// Protocole familiale IP
			Sock_sockaddr.sin_family = Sock_Famille;
			
			cpinti_dbg::CPINTI_DEBUG(".", ".",
							"", "", Ligne_reste, Alerte_action, Date_sans, Ligne_r_normal);
			
			// On copie h_addr vers s_addr
			bcopy((char *) Sock_hostent->h_addr,
					(char *) &Sock_sockaddr.sin_addr.s_addr,
								(size_t) Sock_hostent->h_length);
			// Sock_sockaddr.sin_port = 0;
			// Sock_sockaddr.sin_addr.s_addr = *(long*)Sock_hostent->h_addr;
								
			cpinti_dbg::CPINTI_DEBUG(".", ".",
							"", "", Ligne_reste, Alerte_action, Date_sans, Ligne_r_normal);
										
			// Remplir de zero
			memset(&(Sock_sockaddr.sin_zero), '\0', 8);
			
		
			

			cpinti_dbg::CPINTI_DEBUG("[OK]", "[OK]", "", "", Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);

			
			/******************************************************************/
			/******************** PREPARATION TRAME ICMP **********************/
			/******************************************************************/
			
			cpinti_dbg::CPINTI_DEBUG("Preparation de la trame ICMP... ",
									"Preparation of the ICMP frame... ",
									"net_ping", "ping()", Ligne_reste, Alerte_action, Date_avec, Ligne_r_normal);
			
			char 			PAQUET_ICMP[512];
			struct icmp*	TRAME_ICMP = (struct icmp*) PAQUET_ICMP;
			
			// **** Obtenir le temps de depart pour le comptage ****
			gettimeofday (&Temps_Depart, &Temps_Zone);
			
			// Recuperer la taille du message perso
			size_t Taille_Message;
			int Nombre_paquets_envoyes = 1; // On envoie qu'une seule trame!
			
			size_t TAILLE_ICMP_HDR, TAILLE_PAQUET_ENVOYE, TAILLE_Temps_Debut, TAILLE_Finale;
			
			// Entete ICMP
			TRAME_ICMP->icmp_type		= REQUETE_ICMP; 	/* 0x08 */
			TRAME_ICMP->icmp_code		= CODE_ICMP;		/* 0x00 */
			TRAME_ICMP->icmp_cksum		= CHECKSUM_ICMP;	/* 0x00 */
			TRAME_ICMP->icmp_seq		= SEQUENCE_ICMP;	/* 0x00 */
			TRAME_ICMP->icmp_id			= ID_ICMP;			/* 0x00 */
			
			// Nombre aleratoire base sur l'horloge du systeme
			srand (time(NULL));

			// Generer un nombre aleratoire pour un identifiant unique de la trame ICMP
			TRAME_ICMP->icmp_id = (rand() % 65500 + 1) & 0xFFFF; // 6 501 possibilites c'est deja pas mal hein!
			
			// Creer la requete ICMP
			TAILLE_ICMP_HDR 		= REQUETE_ICMP; // Toujours egale a 8
			TAILLE_PAQUET_ENVOYE 	= sizeof(Nombre_paquets_envoyes);
			TAILLE_Temps_Debut		= sizeof(Temps_Depart);
			Taille_Message 			= strlen(Message);
			
			// Calculer sa taille totale
			TAILLE_Finale			= TAILLE_ICMP_HDR + TAILLE_PAQUET_ENVOYE + TAILLE_Temps_Debut + Taille_Message ;
			
			// Packager l'entete, la requete et le message
			memcpy(&PAQUET_ICMP[TAILLE_ICMP_HDR], &Temps_Depart, TAILLE_Temps_Debut);
			memcpy(&PAQUET_ICMP[TAILLE_ICMP_HDR+TAILLE_Temps_Debut], &Nombre_paquets_envoyes, TAILLE_PAQUET_ENVOYE);
			memcpy(&PAQUET_ICMP[TAILLE_ICMP_HDR+TAILLE_Temps_Debut+TAILLE_PAQUET_ENVOYE], Message, Taille_Message);
			
			// Generer un checksum de la trame pour comparer au retour
			TRAME_ICMP->icmp_cksum = cpinti::Func_Cpinti::Generer_CheckSum((void*) TRAME_ICMP, TAILLE_Finale);
			
			std::string TAILLE_STR 	= std::to_string(TAILLE_Finale);
			std::string SUM_STR 	= std::to_string((int) TRAME_ICMP->icmp_cksum);
		
			cpinti_dbg::CPINTI_DEBUG("[OK] --> Taille:" + TAILLE_STR + " [chksum:" + SUM_STR + "]",
								"[OK] --> Size:" + TAILLE_STR + " [chksum:" + SUM_STR + "]",
								"", "", Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
			
			cpinti_dbg::CPINTI_DEBUG("Envoi de la trame ICMP ",
									"Sending ICMP frame ",
									"net_ping", "ping()", Ligne_reste, Alerte_action, Date_avec, Ligne_r_normal);
			
			
			
			/******************************************************************/
			/********************* ENVOI DE LA TRAME ICMP *********************/
			/******************************************************************/
			
			Resultat = sendto(SocketReseau, TRAME_ICMP, (size_t) TAILLE_Finale, MSG_DONTWAIT, (struct sockaddr *)&Sock_sockaddr, sizeof(Sock_sockaddr));
			
			cpinti_dbg::CPINTI_DEBUG("... ", "... ",
								"", "", Ligne_reste, Alerte_action, Date_sans, Ligne_r_normal);
								
			if (Resultat < 0 || Resultat != (int) TAILLE_Finale)
			{
				Erreur_STR = std::string("sendto():");
				Erreur_STR = Erreur_STR + std::string(strerror(errno));
				Erreur_STR = std::string(strerror(errno));
				cpinti_dbg::CPINTI_DEBUG(" [ERREUR] Probleme de transmission. Raison:'" + Erreur_STR + "'", 
										 " [ERROR] Transmission problem. Reason:'" + Erreur_STR + "'",
					"", "", Ligne_saute, Alerte_erreur, Date_sans, Ligne_r_normal);
				Fermer_socket(SocketReseau);
				return PING_ERR_TRANS;
			}
			else
			{
				if(Resultat < 0)
				{
					switch (errno) 
					{
						case EPIPE:{
							Erreur_STR = std::string("Signal Broken pipe -> sendto():");
							Erreur_STR = Erreur_STR + std::string(strerror(errno));
							break;
						}
						case EHOSTUNREACH:{
							Erreur_STR = Erreur_STR + std::string(strerror(errno));
							
							cpinti_dbg::CPINTI_DEBUG(" [ERREUR] Hote introuvable. '" + Erreur_STR + "'", 
										 " [ERROR] Host not found '" + Erreur_STR + "'",
											"", "", Ligne_saute, Alerte_erreur, Date_avec, Ligne_r_normal);
									
							Fermer_socket(SocketReseau);
					
							return PING_NO_REP;
							
						}
						default:{
							// Si le client a un PB on ferme sa connexion
							Erreur_STR = std::string("send():");
							Erreur_STR = Erreur_STR + std::string(strerror(errno));
							break;
						}
					}	
					
					cpinti_dbg::CPINTI_DEBUG(" [ERREUR] Probleme de transmission. Raison:'" + Erreur_STR + "'", 
										 " [ERROR] Transmission problem. Reason:'" + Erreur_STR + "'",
									"", "", Ligne_saute, Alerte_erreur, Date_avec, Ligne_r_normal);
					Fermer_socket(SocketReseau);
					
					return PING_ERR_TRANS;
				}
			}
			
			cpinti_dbg::CPINTI_DEBUG("[OK]", "[OK]",
								"", "", Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
								
			
			/******************************************************************/
			/********************* RECEPTIONNER LA REPONSE ********************/
			/******************************************************************/
			// Receptionner la reponse
			cpinti_dbg::CPINTI_DEBUG("Attente d'une reponse", 
								"Waiting for a response",
								"net_ping", "ping()", Ligne_reste, Alerte_action, Date_avec, Ligne_r_normal);
								
			
			int	selectTrouve = 0;
			struct timeval IntervalleTemps;
			fd_set FD_Lecture; /*, FD_Ecriture*/

			// Temps d'attente du select
			IntervalleTemps.tv_sec	= 0;
			IntervalleTemps.tv_usec = 10000; // 10 ms

			// Reset les descripteur de fichier
			FD_ZERO (&FD_Lecture);
			// FD_ZERO (&FD_Ecriture);
			
			// Definit le socket sur l'ecoute du descripteur du fichier
			FD_SET (SocketReseau, &FD_Lecture);
			
			// Obtenir le temps
			time_t current_time_init = time(NULL);
			time_t current_time = time(NULL);
			
			cpinti_dbg::CPINTI_DEBUG("... ", "... ",
								"", "", Ligne_reste, Alerte_action, Date_sans, Ligne_r_normal);
								
			// Comparer et boucler durant 2 secondes
			// for(int b = 0; b < 10 && selectTrouve < 1; b++)
				while (current_time <= (current_time_init + 1) + (time_t) Delai_ms )
				{
					selectTrouve = select (SocketReseau+1, &FD_Lecture, NULL /*&FD_Ecriture*/, NULL, &IntervalleTemps);
					if(selectTrouve != 0) break; // Si il y a tout de suite une reponse

					// Recuperer le temps
					current_time = time(NULL);
					
					usleep(1000);
				}
			
			// Nettoyer le descripteur de fichier de la lecture
			FD_ZERO (&FD_Lecture);
			FD_CLR (SocketReseau, &FD_Lecture);

			// Et de l'ecriture
			// FD_ZERO (&FD_Ecriture);
			// FD_CLR (SocketReseau, &FD_Ecriture);
			
			// La machine n'a pas repondu assez vite ou pas du tout..
			if (selectTrouve == 0)
			{
				cpinti_dbg::CPINTI_DEBUG("Pas de reponse. ", "No response.",
					"", "", Ligne_saute, Alerte_avertissement, Date_sans, Ligne_r_normal);
				
				Fermer_socket(SocketReseau);
				return PING_NO_REP; // Pas de reponse!
			}

			cpinti_dbg::CPINTI_DEBUG(" [OK]", " [OK]",
					"", "", Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
			
			Fermer_socket(SocketReseau);
			/******************************************************************/
			/************************ CALCULER TEMPS MIS **********************/
			/******************************************************************/
			
			long Temps_total = cpinti::Func_Cpinti::Comparer_Temps (&Temps_Actuel, &Temps_Depart);
			
			if(Temps_total < 0)
				Temps_total = 0 - Temps_total;
								
			
			std::string Temps_total_STR = std::to_string(Temps_total);
			 
			cpinti_dbg::CPINTI_DEBUG(" Temps:" + Temps_total_STR + " ms.", " Time:" + Temps_total_STR + " ms.",
								"", "", Ligne_saute, Alerte_validation, Date_sans, Ligne_r_normal);
			
			// __real_sleep(1);
			
			return (int) Temps_total;
		}
	}
}














