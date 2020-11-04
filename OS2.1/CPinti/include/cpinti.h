#include <memory>
#include <vector>



#define _THREAD_ATTENTE_ORD		4096
	
#define _MAX_Stack_instance		64 /* Nombre d'instance maximum */
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
	int Wrapper_Cpcdos_OSx_CPinti_Core(int FunctionID, double _CLE_, const char* ARG_1, 
										int ARG_2, void* ARG_3, void* ARG_4, void* ARG_5);
							
	int cpinti_WRAPPER(int FunctionID, double _CLE_, const char* ARG_1, 
						int ARG_2, void* ARG_3, void* ARG_4, void* ARG_5);
}

namespace cpinti
{

	
	static unsigned int SATATISTIQUES_NET_port		[_MAX_Stack_instance];
	static unsigned int SATATISTIQUES_NET_recu		[_MAX_Stack_instance];
	static unsigned int SATATISTIQUES_NET_envoye	[_MAX_Stack_instance];
	static unsigned int SATATISTIQUES_NET_activite	[_MAX_Stack_instance];
	static unsigned int SATATISTIQUES_NET_clients	[_MAX_Stack_instance];
	
	struct cpinti_core_checker
	{
		public:
			// Indexeur des etapes (0 a _CHK_TEMPO_MAX)
			static unsigned int CHECKER_CLOCK;
			
			// Quelle etape la fonction doit traiter (Processus, thread..)
			static unsigned int ETAPE;
			static unsigned int Index;
	};
	
	
				
}

