// Ce module sert simplement pour initialiser les variables se trouvant dans la HEAP memory


/****** H E A P ******/

std::string NP_cpinti_socket::cpinti_socket_LOCAL::Erreur_STR = "";

// int 			NP_cpinti_gestionnaire_tache::thread_args::ARG1 			= 0;
// unsigned int 	NP_cpinti_gestionnaire_tache::thread_args::ARG2 			= 0;
// const char* 	NP_cpinti_gestionnaire_tache::thread_args::ARG3				= 0;
// const char* 	NP_cpinti_gestionnaire_tache::thread_args::ARG4 			= 0;
// const char* 	NP_cpinti_gestionnaire_tache::thread_args::ARG5 			= 0;

// std::string 	NP_cpinti_gestionnaire_tache::thread_args::ARG3_STR 		= "";
// std::string 	NP_cpinti_gestionnaire_tache::thread_args::ARG4_STR 		= "";
// std::string 	NP_cpinti_gestionnaire_tache::thread_args::ARG5_STR 		= "";

// unsigned int 	NP_cpinti_gestionnaire_tache::thread_args::TID 				= 0; /* ID du thread */
// unsigned int 	NP_cpinti_gestionnaire_tache::thread_args::PID				= 0; /* ID du processus */
// unsigned int	NP_cpinti_gestionnaire_tache::thread_args::USER_ID				= 0; /* ID du USER */
// unsigned int	NP_cpinti_gestionnaire_tache::thread_args::OS_ID				= 0; /* ID de l'OS */
// unsigned int 	NP_cpinti_gestionnaire_tache::thread_args::KERNEL_ID 		= 0; /* ID du kernel */
// const char* 	NP_cpinti_gestionnaire_tache::thread_args::NomThread 		= 0; /* Nom du thread */
// std::string 	NP_cpinti_gestionnaire_tache::thread_args::NomThread_STR 	= "";

// unsigned int cpinti::__CpintiCore_CpcdosOSx__::section_critique::delai 		= 0;
// unsigned int cpinti::__CpintiCore_CpcdosOSx__::section_critique::TID 		= 0;
// unsigned int cpinti::__CpintiCore_CpcdosOSx__::section_critique::Mode 				= 0;
// bool cpinti::__CpintiCore_CpcdosOSx__::section_critique::Entre_en_section 	= false;
// bool cpinti::__CpintiCore_CpcdosOSx__::section_critique::verrouille 		= false;

// bool cpinti::__CpintiCore_CpcdosOSx__::section_critique::DEB_THREAD 		= false;
// bool cpinti::__CpintiCore_CpcdosOSx__::section_critique::ARG_THREAD 		= false;
// bool cpinti::__CpintiCore_CpcdosOSx__::section_critique::FIN_THREAD 		= false;
// bool cpinti::__CpintiCore_CpcdosOSx__::section_critique::DEB_PROC 			= false;
// bool cpinti::__CpintiCore_CpcdosOSx__::section_critique::FIN_PROC 			= false;

// unsigned int cpinti::__CpintiCore_CpcdosOSx__::cpinti_core_checker::CHECKER_CLOCK 	= 0;
// unsigned int cpinti::__CpintiCore_CpcdosOSx__::cpinti_core_checker::ETAPE 			= 0;
// unsigned int cpinti::__CpintiCore_CpcdosOSx__::cpinti_core_checker::Index 			= 0;

// void* cpinti::__CpintiCore_CpcdosOSx__::section_critique::adresse_debut 	= 0x0;
// void* cpinti::__CpintiCore_CpcdosOSx__::section_critique::adresse_fin 		= 0x0;

// bool NP_cpinti_gestionnaire_tache::Gestionnaire_des_taches::switch_SIMPLE_doevents 	= false;
// double NP_cpinti_gestionnaire_tache::Gestionnaire_des_taches::Temps_Total 			= 0;
// unsigned int NP_cpinti_gestionnaire_tache::Gestionnaire_des_taches::NB_Cycle_CPU 	= 0;
// unsigned int NP_cpinti_gestionnaire_tache::Gestionnaire_des_taches::NB_MAX_Cycle_CPU = 0;
// unsigned int NP_cpinti_gestionnaire_tache::Gestionnaire_des_taches::Cycle_CPU_res 	= 0;
// unsigned int	NP_cpinti_gestionnaire_tache::Gestionnaire_des_taches::Test_TIME	= 0;

// unsigned int NP_cpinti_gestionnaire_tache::Gestionnaire_des_taches::NB_processus 	= 0;
// unsigned int NP_cpinti_gestionnaire_tache::Gestionnaire_des_taches::NB_thread 		= 0;

// time_t NP_cpinti_gestionnaire_tache::Gestionnaire_des_taches::Temps_DEPART;
// time_t NP_cpinti_gestionnaire_tache::Gestionnaire_des_taches::Temps_ARRIVE;

#define _MAX_Stack_instance		512 /* Nombre d'instance maximum */

// Numero des ports
// unsigned int cpinti::Stack__PORT_ATTRIB[_MAX_Stack_instance] = {0};
				
// Creation des tableau d'instances du stack inverse qui servira de buffer pour Cpcdos et le serveur
// std::vector<std::shared_ptr<cpinti::cpinti_stack_inv>> cpinti::Stack_CPintiCore__KERNEL;
// std::vector<std::shared_ptr<cpinti::cpinti_stack_inv>> cpinti::Stack_CPintiCore__SERVEUR;

unsigned int cpinti::SATATISTIQUES_NET_port			[_MAX_Stack_instance] = {0};
unsigned int cpinti::SATATISTIQUES_NET_recu			[_MAX_Stack_instance] = {0};
unsigned int cpinti::SATATISTIQUES_NET_envoye		[_MAX_Stack_instance] = {0};
unsigned int cpinti::SATATISTIQUES_NET_activite		[_MAX_Stack_instance] = {0};
unsigned int cpinti::SATATISTIQUES_NET_clients		[_MAX_Stack_instance] = {0};



/****** H E A P ******/