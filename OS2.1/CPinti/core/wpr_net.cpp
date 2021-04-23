/*	
	======================================
	==     cpinti ---> Wrapper reseau   ==
	======================================
	
	Developpe entierement par Sebastien FAVIER

	Description
		Module permettant l'acces aux fonctionnalites reseau.
		 Creation de serveur, client TCP/UDP, ping
		 Satistiques reseaux
	
	Creation 
		19/10/2016
 

	Mise a jour
		10/07/2019
		
	16-10-2018	: Adaption 2.1 beta 1.1
	07-12-2017	: AMELIORATION du code en suivant une procedure sticte de GCC
	13-02-2017	: Finitions du serveur & client
	
*/
#include <memory>
#include "cpinti.h"
#include "debug.h"
#include "func_cpi.h"
#include "buffer.h"
#include "stack.h"

#include "socket.h"
#include "ping.h"
#include "serveur.h"
#include "client.h" 
#include "network.h"

#include "process.h" // temporaire pour les defines

// #include "leakchk.h"


namespace cpinti
{

	namespace net
	{
		long cpinti_ping_icmp(const char *IP_machine, const char* Message, long timeout)
		{
			// Cette fonction va permettre de savoir si une machine existe sur le reseau
			// Chemin 	= Chemin d'acces au fichier
			
			// Retourne -1 : Erreur memoire
			// 			 0 : Fichier non disponible
			//			 1 : Fichier present
			
			long Resultats = 0;
			std::string IP_machine_STR = std::string(IP_machine);
			std::string Message_STR = std::string(Message);
						
			return cpinti::net_ping::ping(IP_machine, Message, timeout);
				
		} /* PING */
		
		long cpinti_serveur(unsigned long NumPort, long NombreClients, unsigned long NumeroID, long TYPE_SERVEUR)
		{
			// Cette fonction va permettre de demarrer un serveur reseau TCP ou UDP
			// NumPort 			= Numero de port
			// NombreClients	= Nombre de clients MAXIMUM
			// NumeroID			= Numero d'identification unique
			// TYPE_SERVEUR		= Serveur TCP(3) ou UDP(5)

			
			long Resultats 					= 0;
			std::string NumPort_STR 		= std::to_string(NumPort);
			std::string NombreClients_STR 	= std::to_string(NombreClients);
			std::string NumeroID_STR 		= std::to_string(NumeroID);

			std::string TYPE_SERVEUR_STR;
			
			// Type de serveur
			if(TYPE_SERVEUR==1) // TCP
				TYPE_SERVEUR_STR = "TCP";
			else if(TYPE_SERVEUR==2)
				TYPE_SERVEUR_STR = "UDP";
			else if(TYPE_SERVEUR==3)
				TYPE_SERVEUR_STR = "CCP TCP";
			else if(TYPE_SERVEUR==4)
				TYPE_SERVEUR_STR = "TELNET TCP";
			else if(TYPE_SERVEUR==5)
				TYPE_SERVEUR_STR = "ECHO TCP";
			else if(TYPE_SERVEUR==6)
				TYPE_SERVEUR_STR = "ECHO UDP";
			else
			{
				// Type inconnu
				cpinti_dbg::CPINTI_DEBUG("Type de serveur inconnu. vous avez que TCP (3) ou UDP (5).", 
										"Unknow server protocol. You have only TCP (3) or UDP (5).",
										"__cpintiCore_CpcdosOSx__", "cpinti_serveur()",
										Ligne_reste, Alerte_erreur, Date_avec, Ligne_r_normal);
				return -14;
			}

			cpinti_dbg::CPINTI_DEBUG("Creation d'une zone de memoire partagee pour 'SRV_" + NumPort_STR + "' ...", 
									"Creating shared memory zone for 'SRV_" + NumPort_STR + "' ...",
									"net", "cpinti_serveur()", Ligne_saute, Alerte_action, Date_avec, Ligne_r_normal);
			cpinti::cpinti_GEST_BUFF(NumPort, _STACK_INITIALISER, " ");
			
			cpinti_dbg::CPINTI_DEBUG("Creation d'une zone de memoire partagee pour 'SRV_" + NumPort_STR + "' ... [OK]", 
									"Creating shared memory zone for 'SRV_" + NumPort_STR + "' ... [OK]",
									"net", "cpinti_serveur()", Ligne_saute, Alerte_ok, Date_avec, Ligne_r_normal);
			
			cpinti_dbg::CPINTI_DEBUG("Execution de l'instance 'net_server' type:" + TYPE_SERVEUR_STR + " ...", 
									"'net_server' instance execution...",
									"", "", Ligne_saute, Alerte_action, Date_sans, Ligne_r_normal);

			Resultats = net_server::Demarrer_serveur(NumPort, NombreClients, NumeroID, TYPE_SERVEUR);
			
			// Afficher le resultat dans le debug
			std::string Resultats_STR = std::to_string(Resultats);
		
			cpinti_dbg::CPINTI_DEBUG("Serveur " + TYPE_SERVEUR_STR + ": Port " + NumPort_STR + " s'est arrete avec le code '" + Resultats_STR + "'.", 
									TYPE_SERVEUR_STR + "Server: Port " + NumPort_STR + "has stopped with '" + Resultats_STR + "' code.",
									"", "", Ligne_saute, Alerte_surbrille, Date_sans, Ligne_r_normal);
									
		
			cpinti::cpinti_GEST_BUFF(NumPort, _STACK_SUPPRIMER, " ");
			
			cpinti_dbg::CPINTI_DEBUG("Suppression de la zone de memoire partagee pour 'SRV_" + NumPort_STR + "' ... [OK]", 
									"Deleting shared memory zone for 'SRV_" + NumPort_STR + "' ... [OK]",
									"net", "cpinti_serveur()", Ligne_saute, Alerte_ok, Date_avec, Ligne_r_normal);
					
			return Resultats;

		} /* SERVEUR RESEAU */
		
		long cpinti_client(const char* Adresse, unsigned long NumPort, unsigned long NumeroID, long TYPE_CLIENT)
		{
			// Cette fonction va permettre de demarrer un serveur reseau TCP ou UDP
			// Adresse 			= Adresse IP du host
			// NoPort			= Numero du port host
			// NumeroID			= Numero d'identification unique
			// TYPE_CLIENT		= Client TCP(2) ou UDP(4)
			
			
			
			long Resultats 					= 0;
			std::string NumPort_STR 		= std::to_string(NumPort);
			std::string AdresseIP_STR 		= std::string(Adresse);
			std::string NumeroID_STR 		= std::to_string(NumeroID);

			std::string TYPE_CLIENT_STR;
			
			// Type de serveur
			if(TYPE_CLIENT==1) // TCP
				TYPE_CLIENT_STR = "TCP";
			else if(TYPE_CLIENT==2)
				TYPE_CLIENT_STR = "UDP";
			else
			{
				// Type inconnu
				cpinti_dbg::CPINTI_DEBUG("Type de client inconnu. vous avez que TCP (2) ou UDP (4).", 
										"Unknow server protocol. You have only TCP (2) or UDP (4).",
										"__cpintiCore_CpcdosOSx__", "cpinti_client()",
										Ligne_reste, Alerte_erreur, Date_avec, Ligne_r_normal);
				return -13;
			}

			cpinti_dbg::CPINTI_DEBUG("Creation d'une zone de memoire partagee pour 'CLT_" + NumeroID_STR + "' ...", 
									"Creating shared memory zone for 'CLT_" + NumeroID_STR + "' ...",
									"net", "cpinti_client()", Ligne_saute, Alerte_action, Date_avec, Ligne_r_normal);
			cpinti::cpinti_GEST_BUFF(NumeroID, _STACK_INITIALISER, " ");
			
			cpinti_dbg::CPINTI_DEBUG("Creation d'une zone de memoire partagee pour 'CLT_" + NumPort_STR + "' ... [OK]", 
									"Creating shared memory zone for 'CLT_" + NumPort_STR + "' ... [OK]",
									"net", "cpinti_client()", Ligne_saute, Alerte_ok, Date_avec, Ligne_r_normal);
			
			cpinti_dbg::CPINTI_DEBUG("Execution de l'instance 'net_client' ...", 
									"'net_client' instance execution...",
									"", "", Ligne_saute, Alerte_action, Date_sans, Ligne_r_normal);
	
			Resultats = net_client::Demarrer_client(AdresseIP_STR, NumPort, NumeroID, TYPE_CLIENT);
			
			// Afficher le resultat dans le debug
			std::string Resultats_STR = std::to_string(Resultats);
		
			cpinti_dbg::CPINTI_DEBUG("Client " + TYPE_CLIENT_STR + " [TCP " + AdresseIP_STR + ":" + NumPort_STR + "] ID " + NumeroID_STR + " s'est arrete avec le code '" + Resultats_STR + "'.", 
									TYPE_CLIENT_STR + "Client [TCP " + AdresseIP_STR + ":" + NumPort_STR + "] ID " + NumeroID_STR + " has stopped with '" + Resultats_STR + "' code.",
									"", "", Ligne_saute, Alerte_surbrille, Date_sans, Ligne_r_normal);
									
			cpinti::cpinti_GEST_BUFF(NumeroID, _STACK_SUPPRIMER, " ");
			
			cpinti_dbg::CPINTI_DEBUG("Suppression de la zone de memoire partagee pour 'CLT_" + NumPort_STR + "' ... [OK]", 
									"Deleting shared memory zone for 'CLT_" + NumPort_STR + "' ... [OK]",
									"net", "cpinti_serveur()", Ligne_saute, Alerte_ok, Date_avec, Ligne_r_normal);
					
			return Resultats;
			
		} /* CLIENT RESEAU */
	} /* NET */
}

