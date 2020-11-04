/* Entete CPinti.CPP */

#include <iostream>
#include <string>	/* std::string */
#include <memory> 	/* shared_ptr */
#include <vector> 	/* vector */


extern "C" bool fStartExeLoader(const char* Source_File);

#ifndef HEADER_CPCDOS
	#define HEADER_CPCDOS

	
	#define _THREAD_ATTENTE_ORD		4096
	
	#define _MAX_Stack_instance		512 /* Nombre d'instance maximum */
	#define _MAX_Stack_block		512 /* Nombre de blocks stackable par instance */		// Modif 24/01/18 256 -> 512
	
	#define _EXEC_WRP_ERR_MEMOIRE 	9999
	
	// Gestionnaire des taches
	#define	_DEB_THREAD 			0xA0 /* Attente creation thread */
	#define	_FIN_THREAD_ARGS 		0xA1 /* Attente fin lecture memoire partage ARGS */
	#define	_FIN_EXEC_THREAD 		0xA2 /* Attente fin execution thread */
	#define	_DEB_EXEC_PROC	 		0xA3 /* Attente creation execution processus */
	#define	_FIN_EXEC_PROC	 		0xA4 /* Attente fin execution processus */
	#define	_SANS_FLAG	 			0x00 /* Erreur */
	#define	_FIN_SECTION 			-1 	/* Erreur */
	
	// Ckecker CPinti Core
	#define _CHK_TEMPO_MAX			15
	#define _CPINTI_CHK_AUCUN		0xB0 /* Aucun */
	#define _CPINTI_CHK_PROC		0xB1 /* Traitement des processus */
	#define _CPINTI_CHK_THREAD		0xB2 /* Traitement des threads */
	#define _CPINTI_CHK_			0xB3 /* Aucun */
	
	#define _CHK_ERR_PROCESSUS_C	1	 /* Probleme de processus detecte et corrige */	
	#define _CHK_ERR_PROCESSUS		2	 /* Probleme de processus detecte et NON corrige */
	#define _CHK_ERR_THREAD_C		3	 /* Probleme de thread detecte et corrige */	
	#define _CHK_ERR_THREAD			4	 /* Probleme de thread detecte et NON corrige */
	#define _CHK_ERR__C				5	 /* Probleme de ... detecte et corrige */	
	#define _CHK_ERR_				6	 /* Probleme de ... detecte et NON corrige */
	
	
	// =====================================================================
	// Celui-ci pour developper en C/C++ facilement pour les contributeurs
	// =====================================================================
	namespace Wrapper_Cpcdos
	{
		class __SYS_cpcdos__WRAPPER_
		{
			public:
			int Wrapper_Cpcdos_OSx_CPinti_Core(int Function_ID, double PID, int Arg_1, 
									unsigned int Arg_2, const char* Arg_3, const char* Arg_4, const char* Arg_5);
		};
	}
	

	namespace cpinti
	{
		extern int get_debug_mode();
		
		extern void cpinti_Appeler_Scheduler_CPintiCore	(unsigned int Temps);
		extern void cpinti_Sleep						(unsigned int Millisecondes);
		extern void cpinti_USleep						(unsigned int MicroSecondes);
		
		class __CpintiCore_CpcdosOSx__
		{
			private:
			
				static unsigned int SATATISTIQUES_NET_port		[_MAX_Stack_instance];
				static unsigned int SATATISTIQUES_NET_recu		[_MAX_Stack_instance];
				static unsigned int SATATISTIQUES_NET_envoye	[_MAX_Stack_instance];
				static unsigned int SATATISTIQUES_NET_activite	[_MAX_Stack_instance];
				static unsigned int SATATISTIQUES_NET_clients	[_MAX_Stack_instance];
				
				// std::shared_ptr <NP_cpinti_gestionnaire_tache::Gestionnaire_des_taches> CPintiCore_Gestionnaire_Taches;

				// Ceci permet de bloquer toutes interruptions et/ou met en attente toute 
				//  tentative d'acces memoire en lecture/ecriture et/ou toute tentative
				//  de creation d'un nouveau thread/processsus durant un temps determminee
				//	OU durant le temps d'un FLAG positif (THREAD / PROCESSUS).
				struct section_critique
				{
					public:
						// Adresse memoire
						static void* adresse_debut;
						static void* adresse_fin;
						
						// Etat actuel
						static bool verrouille;
						static bool Entre_en_section;
						
						// Temps maximum
						static unsigned int delai;
						
						// Mode du concerne
						static unsigned int Mode;
						
						// ID du thread courant
						static unsigned int TID;
						
						// FLAGS du concerne
						static bool DEB_THREAD;
						static bool ARG_THREAD;
						static bool FIN_THREAD;
						static bool DEB_PROC;
						static bool FIN_PROC;
				};
				
				// Ceci permet de verifier et corriger d'eventuels module du systeme
				//  comme un thread qui s'est ferme tout seul sans un parent. Du coup sa
				//  memoire reste valide. Le but de ce checker est de detecter le thread
				//  arrete et vider sa memoire par exemple!
				// Et encore d'autres fonctions! 
				struct cpinti_core_checker
				{
					public:
						// Indexeur des etapes (0 a _CHK_TEMPO_MAX)
						static unsigned int CHECKER_CLOCK;
						
						// Quelle etape la fonction doit traiter (Processus, thread..)
						static unsigned int ETAPE;
						static unsigned int Index;
				};
				
			public:
			
				// Numero des ports (Faut savoir qu'il melange serveur et client, a corriger a l'avenir)
				static unsigned int Stack__PORT_ATTRIB[_MAX_Stack_instance];
				
				// Creation des tableau d'instances du stack inverse qui servira de buffer pour Cpcdos et le serveur
				static std::vector<std::shared_ptr<NP_cpinti_stack::cpinti_stack_inv>> Stack_CPintiCore__KERNEL;
				static std::vector<std::shared_ptr<NP_cpinti_stack::cpinti_stack_inv>> Stack_CPintiCore__SERVEUR;
			
				int CPinti_Core_TESTE_INSTANCE				();
				
				int cpinti_ckecker							(unsigned int ID_KERNEL);
				
				/**** Creation Processus ****/
				
				
				
				/**** Securite pour la preemption ****/
				unsigned int cpinti_est_section_critique	();
				unsigned int cpinti_est_section_critique	(int mode);
				
				void cpinti_fin_section_critique			();
				void cpinti_entrer_section_critique			(unsigned int mode);
				void cpinti_entrer_section_critique			(unsigned int TID, unsigned int mode, unsigned int delai);
				/**** Securite pour la preemption ****/
				
				int cpinti_WRAPPER							(int FunctionID, double _CLE_, int ARG_1, unsigned int ARG_2, const char* ARG_3, const char* ARG_4, const char* ARG5);
				void* cpinti_thread_args					(int NoARG);
				bool Initialiser_MT_Timer					();
				bool Stop_MT_Timer							();

			
				int cpinti_ping_icmp						(const char *IP_machine, const char* Message, int Param);
				int cpinti_serveur							(unsigned int NumPort, int NombreClients, unsigned int NumeroID, int TYPE_SERVEUR);
				int cpinti_client							(const char* Adresse, unsigned int NoPort, unsigned int NumeroID, int TYPE_SERVEUR);
				
				int cpinti_Fichier_Existe					(const char* Chemin);
				double cpinti_Taille_Fichier				(const char* Chemin);
				double cpinti_Lire_Fichier_complet			(const char* Chemin, const char* Mode, char* _DONNEES);
				double cpinti_Ecrire_Fichier_complet		(const char* Chemin, const char* _DONNEES, int Mode);
				
				bool cpinti_Supprimer_Fichier				(const char* Chemin, bool Securise, int NombrePasses);
				bool cpinti_Copier_Fichier					(const char* Source, const char* Destination, int Priorite, const char* VAR_Progression, const char* VAR_Octets, const char* VAR_OctetsParSec);
				
				/**** STATISTIQUES RESEAUX ****/
				static bool cpinti_del_net_info				(unsigned int NoPort);
				static bool cpinti_add_net_info				(unsigned int NoPort);
				static bool cpinti_set_net_info				(unsigned int NoPort, unsigned int pkt_recu, unsigned int pkt_envoye, unsigned int activite, unsigned int clients);
				unsigned int cpinti_get_net_info			(unsigned int NoPort, unsigned int _inf);

				static unsigned int cpinti_get_net_envoye	();
				static unsigned int cpinti_get_net_recu		();
				static unsigned int cpinti_get_net_machines	();
				static unsigned int cpinti_get_net_activite	();
				/**-- STATISTIQUES RESEAUX --**/
				
				
				/**** STATISTIQUES CPU ****/
				unsigned int cpinti_get_cycle_cpu			();
				void cpinti_update_cycle_cpu				();
				unsigned int cpinti_get_max_cycle_cpu		();
				int cpinti_get_pourcent_cpu					();
				void cpinti_evaluation_cycle_cpu			();
				/**-- STATISTIQUES CPU --**/
				
				
				
				int cpinti_GEST_BUFF_c						(unsigned int _ID, int _CHEMIN, const char* _DONNEES);
				int cpinti_GEST_BUFF_c						(unsigned int _ID, int _CHEMIN, char* _DONNEES);
				
				int cpinti_testExeLoader					(const char* chemin);
				int cpinti_testOpenGL						();

				
				__CpintiCore_CpcdosOSx__					();
				~__CpintiCore_CpcdosOSx__					();
		};
	}
#endif


