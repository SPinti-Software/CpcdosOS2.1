/*	
	======================================
	==     CPinti ---> Wrapper reseau   ==
	======================================
	
	Developpe entierement par Sebastien FAVIER

	Description
		Module permettant l'acces aux fonctionnalites reseau.
		 Creation de serveur, client TCP/UDP, ping
		 Satistiques reseaux
	
	Creation 
		19/10/2016


	Mise a jour
		25/02/2019
		
	16-10-2018	: Adaption 2.1 beta 1.1
	07-12-2017	: AMELIORATION du code en suivant une procedure sticte de GCC
	13-02-2017	: Finitions du serveur & client
	
*/
#include <memory>
#include "cpinti.h"
#include "debug.h"
#include "func_cpi.h"

#include "socket.h"
#include "ping.h"
#include "serveur.h"
#include "client.h" 
#include "network.h"

#include "process.h" // temporaire pour les defines

namespace cpinti
{

	namespace net
	{
		bool cpinti_add_net_info(unsigned int NoPort) 
		{
			// Permet de mettre a jour les informations des statistiques de la carte reseau 
			// Pour les variables CpcdosC+
			// 	NoPort		: Numero du port actuel
			// 	pkt_recu	: Nombre de paquets recu
			// 	pkt_envoye	: Nombre de paquets envoyes
			// 	activite	: Activite du thread en %
			// 	clients		: Nombre de clients connectes (-1 si c'est une instance d'un client)
			
			// Retourne TRUE:Ok FALSE:NoPort inexistant
			
			bool Trouve = false;
			
			// for(unsigned int Index = 0; Index < _MAX_Stack_instance; Index++)
				
				// // Numero de port trouve
				// if(SATATISTIQUES_NET_port[Index] == 0)
				// {
					// // Incription des valeurs calcules
					// SATATISTIQUES_NET_port		[Index] = NoPort;
					// SATATISTIQUES_NET_recu		[Index] = 0;
					// SATATISTIQUES_NET_envoye	[Index] = 0;
					// SATATISTIQUES_NET_activite	[Index] = 0;
					// SATATISTIQUES_NET_clients	[Index] = 0;
					
					// Trouve = true;
					// break;
				// }
			return Trouve;
		}
		
		bool cpinti_del_net_info(unsigned int NoPort) 
		{
			// Permet de mettre a jour les informations des statistiques de la carte reseau 
			// Pour les variables CpcdosC+
			// 	NoPort		: Numero du port actuel
			// 	pkt_recu	: Nombre de paquets recu
			// 	pkt_envoye	: Nombre de paquets envoyes
			// 	activite	: Activite du thread en %
			// 	clients		: Nombre de clients connectes (-1 si c'est une instance d'un client)
			
			// Retourne TRUE:Ok FALSE:NoPort inexistant
			
			bool Trouve = false;
			
			/* for(unsigned int Index = 0; Index < _MAX_Stack_instance; Index++)
				
				// Numero de port trouve
				if(SATATISTIQUES_NET_port[Index] == NoPort)
				{
					// Incription des valeurs calcules
					SATATISTIQUES_NET_port		[Index] = 0;
					SATATISTIQUES_NET_recu		[Index] = 0;
					SATATISTIQUES_NET_envoye	[Index] = 0;
					SATATISTIQUES_NET_activite	[Index] = 0;
					SATATISTIQUES_NET_clients	[Index] = 0;
					
					Trouve = true;
					break;
				} */
			return Trouve;
		}
		
		bool cpinti_set_net_info(unsigned int NoPort, unsigned int activite, unsigned int pkt_recu, unsigned int pkt_envoye, unsigned int clients) 
		{
			// Permet de mettre a jour les informations des statistiques de la carte reseau 
			// Pour les variables CpcdosC+
			// 	NoPort		: Numero du port actuel
			// 	activite	: Activite du thread en % (et non thread/CPU -> a corriger)
			// 	pkt_recu	: Nombre de paquets recu
			// 	pkt_envoye	: Nombre de paquets envoyes
			// 	clients		: Nombre de clients connectes (-1 si c'est une instance d'un client)
			
			// Retourne TRUE:Ok FALSE:NoPort inexistant
			
			bool Trouve = false;
			
			/* for(unsigned int Index = 0; Index < _MAX_Stack_instance; Index++)
				
				// Numero de port trouve
				if(SATATISTIQUES_NET_port[Index] == NoPort)
				{
					// Incription des valeurs calcules
					SATATISTIQUES_NET_recu		[Index] = pkt_recu;
					SATATISTIQUES_NET_envoye	[Index] = pkt_envoye;
					SATATISTIQUES_NET_activite	[Index] = activite;
					SATATISTIQUES_NET_clients	[Index] = clients;
					
					Trouve = true;
					break;
				} */
			return Trouve;
		}

		unsigned int cpinti_get_net_info(unsigned int NoPort, unsigned int _inf)
		{
			// Obtenir des informations de la carte reseau
			
			// for(unsigned int Index = 0; Index < _MAX_Stack_instance; Index++)
				
				// // Numero de port trouve
				// if(SATATISTIQUES_NET_port[Index] == NoPort)
				// {
					// if(_inf == 0x01) /* Nombre de paquets recus */
						// return SATATISTIQUES_NET_recu [Index];
					// if(_inf == 0x02) /* Nombre de paquets envoyes */
						// return SATATISTIQUES_NET_envoye[Index];
					// if(_inf == 0x03) /* Nombre de paquets activites */
						// return SATATISTIQUES_NET_activite[Index];
					// if(_inf == 0x04) /* Nombre de clients connectes */
						// return SATATISTIQUES_NET_clients[Index];
					
					// return 0xFF; // _inf introuvable
				// }
			return 0xFE; // Port introuvable
		}
		
		unsigned int cpinti_get_net_envoye()
		{
			// Obtenir le nombre de paquets envoyes par secondes de tous les ports
			unsigned int Resultat = 0;
			
			// for(unsigned int Index = 0; Index < _MAX_Stack_instance; Index++)
				// if(SATATISTIQUES_NET_port[Index] != 0) 
					// Resultat = Resultat + SATATISTIQUES_NET_envoye [Index];
			
			return Resultat;
		}
		
		unsigned int cpinti_get_net_recu()
		{
			// Obtenir le nombre de paquets recu par secondes de tous les ports
			unsigned int Resultat = 0;
			
			// for(unsigned int Index = 0; Index < _MAX_Stack_instance; Index++)
				// if(SATATISTIQUES_NET_port[Index] != 0) 
					// Resultat = Resultat + SATATISTIQUES_NET_recu [Index];
			
			return Resultat;
		}
		
		unsigned int cpinti_get_net_machines()
		{
			// Obtenir le nombre de machines connectes (clients)
			unsigned int Resultat = 0;
		
			// for(unsigned int Index = 0; Index < _MAX_Stack_instance; Index++)
				// if(SATATISTIQUES_NET_port[Index] != 0)
					// Resultat = Resultat + SATATISTIQUES_NET_clients [Index];


			return Resultat;
		}
		
		unsigned int cpinti_get_net_activite()
		{
			// Obtenir en pourcentage l'activite de la carte reseau et tous les ports
			unsigned int Resultat = 0;
			
			// for(unsigned int Index = 0; Index < _MAX_Stack_instance; Index++)
				// if(SATATISTIQUES_NET_port[Index] != 0)
				// {
					// Resultat = Resultat + SATATISTIQUES_NET_activite [Index];
				// }

			if(Resultat > 100) Resultat = 100;
			if(Resultat < 1) Resultat = 0;
			
			return Resultat;
		}
		
		int cpinti_ping_icmp(const char *IP_machine, const char* Message, int timeout)
		{
			// Cette fonction va permettre de savoir si une machine existe sur le reseau
			// Chemin 	= Chemin d'acces au fichier
			
			// Retourne -1 : Erreur memoire
			// 			 0 : Fichier non disponible
			//			 1 : Fichier present
			
			
			int Resultats = 0;
			std::string IP_machine_STR = std::string(IP_machine);
			std::string Message_STR = std::string(Message);
							
			return cpinti::net_ping::ping(IP_machine, Message, timeout);
				
		} /* PING */
		
		int cpinti_serveur(unsigned int NumPort, int NombreClients, unsigned int NumeroID, int TYPE_SERVEUR)
		{
			// Cette fonction va permettre de demarrer un serveur reseau TCP ou UDP
			// NumPort 			= Numero de port
			// NombreClients	= Nombre de clients MAXIMUM
			// NumeroID			= Numero d'identification unique
			// TYPE_SERVEUR		= Serveur TCP(3) ou UDP(5)
			
			
			
			int Resultats 					= 0;
			std::string NumPort_STR 		= std::to_string(NumPort);
			std::string NombreClients_STR 	= std::to_string(NombreClients);
			std::string NumeroID_STR 		= std::to_string(NumeroID);

			std::string TYPE_SERVEUR_STR;
			
			// Type de serveur
			if(TYPE_SERVEUR==3) // TCP
				TYPE_SERVEUR_STR = "TCP";
			else if(TYPE_SERVEUR==5)
				TYPE_SERVEUR_STR = "UDP";
			else if(TYPE_SERVEUR==31)
				TYPE_SERVEUR_STR = "CCP TCP";
			else if(TYPE_SERVEUR==32)
				TYPE_SERVEUR_STR = "TELNET TCP";
			else if(TYPE_SERVEUR==33)
				TYPE_SERVEUR_STR = "ECHO TCP";
			else if(TYPE_SERVEUR==54)
				TYPE_SERVEUR_STR = "ECHO UDP";
			else
			{
				// Type inconnu
				cpinti_dbg::CPINTI_DEBUG("Type de serveur inconnu. vous avez que TCP (3) ou UDP (5).", 
										"Unknow server protocol. You have only TCP (3) or UDP (5).",
										"__CpintiCore_CpcdosOSx__", "cpinti_serveur()",
										Ligne_reste, Alerte_erreur, Date_avec, Ligne_r_normal);
				return 0;
			}

			cpinti_dbg::CPINTI_DEBUG("Creation d'une instance de cpinti_srv... ", 
						 "Creating instance of cpinti_srv... ",
							"__CpintiCore_CpcdosOSx__", "cpinti_serveur()",
							Ligne_reste, Alerte_validation, Date_avec, Ligne_r_normal);
						
			// Instanciation d'un nouveau serveur
			std::unique_ptr<NP_cpinti_serveur::cpinti_srv> instance_srv(new NP_cpinti_serveur::cpinti_srv);
			
			if (instance_srv != NULL)
			{
				std::string ADR = "0x" + std::to_string((unsigned int) &instance_srv);
				std::string SIZ = std::to_string((int) sizeof(instance_srv));
				cpinti_dbg::CPINTI_DEBUG("[OK] --> Allocation offset:" + ADR + " taille:" + SIZ + " octets.", "[OK] --> Allocation offset:" + ADR + " size:" + SIZ + " bytes.", 
								"", "", Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);

				Resultats = instance_srv->Demarrer_serveur(NumPort, NombreClients, NumeroID, TYPE_SERVEUR);
				
				// Afficher le resultat dans le debug
				std::string Resultats_STR = std::to_string(Resultats);
			
				cpinti_dbg::CPINTI_DEBUG("Serveur " + TYPE_SERVEUR_STR + ": Port " + NumPort_STR + " s'est arrete avec le code '" + Resultats_STR + "'.", 
										TYPE_SERVEUR_STR + "Server: Port " + NumPort_STR + "has stopped with '" + Resultats_STR + "' code.",
										"", "", Ligne_saute, Alerte_surbrille, Date_sans, Ligne_r_normal);
						
				return Resultats;
			}
			else
			{
				
				cpinti_dbg::CPINTI_DEBUG("Memoire insuffisante.", "Enough memory.", "", "", Ligne_saute, Alerte_erreur, Date_sans, Ligne_r_normal);
				return _EXEC_WRP_ERR_MEMOIRE; // Memoire insuffisante
			} 
			return 0;
		} /* SERVEUR RESEAU */
		
		int cpinti_client(const char* Adresse, unsigned int NumPort, unsigned int NumeroID, int TYPE_CLIENT)
		{
			// Cette fonction va permettre de demarrer un serveur reseau TCP ou UDP
			// Adresse 			= Adresse IP du host
			// NoPort			= Numero du port host
			// NumeroID			= Numero d'identification unique
			// TYPE_CLIENT		= Client TCP(2) ou UDP(4)
			
			
			
			int Resultats 					= 0;
			std::string NumPort_STR 		= std::to_string(NumPort);
			std::string AdresseIP_STR 		= std::string(Adresse);
			std::string NumeroID_STR 		= std::to_string(NumeroID);

			std::string TYPE_CLIENT_STR;
			
			// Type de serveur
			if(TYPE_CLIENT==2) // TCP
				TYPE_CLIENT_STR = "TCP";
			else if(TYPE_CLIENT==4)
				TYPE_CLIENT_STR = "UDP";
			else
			{
				// Type inconnu
				cpinti_dbg::CPINTI_DEBUG("Type de client inconnu. vous avez que TCP (2) ou UDP (4).", 
										"Unknow server protocol. You have only TCP (2) or UDP (4).",
										"__CpintiCore_CpcdosOSx__", "cpinti_serveur()",
										Ligne_reste, Alerte_erreur, Date_avec, Ligne_r_normal);
				return 0;
			}

			cpinti_dbg::CPINTI_DEBUG("Creation d'une instance de cpinti_client... ", 
						 "Creating instance of cpinti_client... ",
							"__CpintiCore_CpcdosOSx__", "cpinti_serveur()",
							Ligne_reste, Alerte_validation, Date_avec, Ligne_r_normal);
						
			// Instanciation d'un nouveau serveur
			std::unique_ptr<NP_cpinti_client::cpinti_client> instance_client (new NP_cpinti_client::cpinti_client);
			
			if (instance_client != NULL)
			{
				std::string ADR = "0x" + std::to_string((unsigned int) &instance_client);
				std::string SIZ = std::to_string((int) sizeof(instance_client));
				cpinti_dbg::CPINTI_DEBUG("[OK] --> Allocation offset:" + ADR + " taille:" + SIZ + " octets.", "[OK] --> Allocation offset:" + ADR + " size:" + SIZ + " bytes.", 
								"", "", Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);

				Resultats = instance_client->Demarrer_client(AdresseIP_STR, NumPort, NumeroID, TYPE_CLIENT);
				
				// Afficher le resultat dans le debug
				std::string Resultats_STR = std::to_string(Resultats);
			
				cpinti_dbg::CPINTI_DEBUG("Client " + TYPE_CLIENT_STR + ": Port " + NumPort_STR + " s'est arrete avec le code '" + Resultats_STR + "'.", 
										TYPE_CLIENT_STR + "Client: Port " + NumPort_STR + "has stopped with '" + Resultats_STR + "' code.",
										"", "", Ligne_saute, Alerte_surbrille, Date_sans, Ligne_r_normal);
						
				return Resultats;
			}
			else
			{
				
				cpinti_dbg::CPINTI_DEBUG("Memoire insuffisante.", "Enough memory.", "", "", Ligne_saute, Alerte_erreur, Date_sans, Ligne_r_normal);
				return _EXEC_WRP_ERR_MEMOIRE; // Memoire insuffisante
			}
			return 0;
		} /* CLIENT RESEAU */
	} /* NET */
}

