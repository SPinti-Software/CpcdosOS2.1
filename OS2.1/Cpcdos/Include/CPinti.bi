
'            ===== ========================== =====
'    ============= ************************** =============
' ================ CPinti Core for Cpcdos OSx ================
'    ============= ************************** =============
'            ===== ========================== =====

#define DWORD uinteger

Extern "C++" lib "cpnti"

	declare sub dump_page(NumPAGE as uinteger)
	declare function get_numbers_of_pages() as uinteger
	
	declare sub main_exec_thread()

	namespace cpinti_dbg
		Declare sub 		debug_mode		(a as integer)
	End namespace
	
	' == WRAPPER MODULES C++ ==
	namespace Wrapper_Cpcdos
		declare function cpinti_WRAPPER			cdecl (FunctionID as integer, _CLE_ as double, ARG_1 as CONST ZString PTR, ARG_2 as integer, ARG_3 as any ptr, ARG_4 as any ptr, ARG_5 as any ptr) as integer
	End namespace
	
	namespace cpinti

		' == NETWORK ==
		namespace net
			declare function cpinti_ping_icmp			(AdresseIP as CONST ZString ptr, Message as CONST ZString ptr, Timeout as integer) as integer
			declare function cpinti_serveur				(port as uinteger, NombreClients as integer, ID as uinteger, TypeServeur as integer) as integer
			declare function cpinti_client				(AdresseDistant as CONST ZString ptr, port as uinteger, PID as uinteger, TypeClient as integer) as integer
		end namespace

		declare function cpinti_GEST_BUFF_c			(_ID as uinteger, _Source as integer, _DONNEES as ZString ptr) as integer
		
		' == FICHIERS ==
		namespace gestionnaire_fichier
		
			declare function cpinti_Fichier_Existe			(Source as CONST ZString ptr) as boolean
			Declare function cpinti_Taille_Fichier			(Source as CONST ZString ptr) as double
			declare function cpinti_Lire_Fichier_complet	(Source as CONST ZString ptr, Mode as CONST ZString ptr, Retour_ptr as ZString ptr, TailleFichier as uinteger) as boolean
			declare function cpinti_Ecrire_Fichier_complet	(Source as CONST ZString ptr, Donnees as CONST ZString ptr, FLAG as integer) as boolean
			declare function cpinti_Supprimer_Fichier		(Source as CONST ZString ptr, Securise as boolean, NombrePasses as integer) as boolean
			declare function cpinti_Copier_Fichier			(Source as CONST ZString ptr, Destination as CONST ZString ptr, Priorite as integer, VAR_Progression as CONST ZString ptr, VAR_Octets as CONST ZString ptr, VAR_OctetsParSecondes as CONST ZString ptr) as boolean
		end namespace
		
		' == EXTRA ==
		
		
		
		Declare sub 		CPINTI_DEBUG_C	(TexteFrancais as CONST ZString ptr, TexteAnglais as CONST ZString ptr, Declancheur as CONST ZString ptr, NomFonction as CONST ZString ptr, DebutLigne as integer, NiveauAlerte as integer)
		
		' ***********************************************************
		' ****** G E S T I O N N A I R E   D E S   T A C H E S ******
		' ***********************************************************
		
		declare sub cpinti_doevents						(Temps as uinteger)
		declare sub cpinti_Sleep						(Temps_MS as uinteger)
		declare sub cpinti_USleep						(Temps_US as uinteger)

		' == INTERCEPTION D'ERREURS ==
		namespace interception
			declare function 	initialise_interception_exception	() as boolean
			declare sub 		Erreur_Fatale						(numsignal as integer, ligne as integer, fichier as ZString PTR, fonction as ZString ptr)
		End namespace
		
		' == TASK MANAGER ==
		namespace gestionnaire_tache

			
			declare function 	_exit 					() as boolean
			declare function	state_SectionCritique	cdecl() as boolean
			declare sub			begin_SectionCritique	cdecl()
			declare sub			end_SectionCritique		cdecl()
			declare function	initialiser_Multitache	cdecl() as boolean
		
		
			' === P R O C E S S U S ===
			declare function 	cpinti_creer_processus			cdecl(ID_KERNEL as uinteger, ID_OS as uinteger, ID_USER as uinteger, _
																	PID_PARENT as uinteger, NomProcessus as CONST ZString PTR) as uinteger
			declare function 	cpinti_arreter_processus		cdecl(ID_KERNEL as uinteger, PID as uinteger) as boolean
			declare sub		 	cpinti_set_etat_processus		cdecl(ID_KERNEL as uinteger, PID as uinteger, ACTION as uinteger)
			declare function 	cpinti_get_etat_processus		cdecl(ID_KERNEL as uinteger, PID as uinteger) as uinteger
			declare function 	cpinti_get_nom_processus		cdecl(PID as uinteger) as CONST ZString PTR
			declare function	cpinti_get_nombre_processus		cdecl() as uinteger
			
			
			' === T H R E A D S ===
			declare function 	cpinti_creer_thread		cdecl (ID_KERNEL as uinteger, ID_OS as uinteger, ID_USER as uinteger, _
																PID as uinteger,  NomThread as CONST ZString PTR, Priorite as integer, Fonction as function (arg as any ptr) as any ptr, ARG_CP as any ptr, ARG_TH as uinteger) as uinteger
			declare function 	cpinti_arreter_thread	cdecl (ID_KERNEL as uinteger, ID_OS as uinteger, PID as uinteger, force as boolean) as boolean
			declare function 	cpinti_get_Arguments	cdecl () as any ptr
			declare function 	cpinti_etat_thread		cdecl (ID_KERNEL as uinteger, PID as uinteger, TID as uinteger) as uinteger
			declare function 	cpinti_fin_thread		cdecl (ID_KERNEL as uinteger, PID as uinteger, TID as uinteger) as boolean
			declare function 	cpinti_get_nombre_threads cdecl() as uinteger
			declare function 	cpinti_get_nom_thread	cdecl (TID as uinteger) as CONST ZString ptr
			
			declare function 	get_ThreadEnCours		cdecl () as uinteger
			declare function 	free_Thread_zombie		cdecl (tid as uinteger) as boolean
			declare function	check_Thread_zombie		cdecl (liberer as boolean, debug as boolean) as uinteger
			
			declare sub			IamInLive				cdecl ()
			declare function	get_cycle_cpu			cdecl () as uinteger
			declare function	eval_cycle_cpu			cdecl () as uinteger
			declare function	get_cycle_MAX_cpu		cdecl () as uinteger
			
			' === S H E D U L E R ===
			declare sub			Interruption_Timer		cdecl (signal as integer)
			declare sub			switch_context			cdecl ()
			declare sub 		loop_MAIN				cdecl ()
			

			' === T I M E R S ===
			declare function 	get_NombreTimer			() as uinteger
			declare function 	demarrer_SCHEDULER		(Timer_ID as uinteger, Temps_us as integer) as boolean
			declare function 	stop_SCHEDULER			(Frequence as integer) as boolean
			declare function 	initialiser_PIT			(Frequence as integer, Intervalle_INTERNE as integer) as boolean
			declare function 	ajouter_Timer			(Fonction as uinteger) as uinteger
			
		end namespace ' gestionnaire taches
		
		' Type __CpintiCore_CpcdosOSx__ extends object
			' public:
			' Declare sub cpinti_joindre( a as integer)
			' Declare sub stopper_thread()
			 
			' Declare function cpinti_WRAPPER					(Function_ID as integer, _CLE_ as double, ARG_1 as integer, ARG_2 as uinteger, ARG_3 as CONST ZString PTR, ARG_4 as CONST ZString PTR, ARG_5 as CONST ZString PTR) as integer
			' Declare function CPinti_Core_TESTE_INSTANCE		() as integer
			' declare function pthmicrosleep					(temps as integer) as integer
			' Declare function cpinti_ajout_thread			(TypeCpc as integer, priorite as integer, nom as ZString ptr) as integer
			' Declare function get_ID_Thread					() as integer
			' Declare function get_Nom_Thread					() as ZString ptr
			' Declare function cpinti_boucle_thread			(a as integer) as integer
			' declare function cpinti_initialisation			(a as integer, b as integer ) as integer
			' declare function cpinti_version					() as integer
			' declare function cpinti_test					() as integer
			' declare function get_MEMOIRE					() as integer
			' declare function cpinti_isr_initialisation		(a as integer, b as any ptr,  c as any ptr) as integer

			' declare sub		 Quitter_CPintiCore				() 
			
			' declare function cpinti_ckecker					(ID_KERNEL as uinteger) as integer
			
			' declare sub		 cpinti_fin_section_critique	()
			' declare sub 	 cpinti_ENTRER_SectionCritique	(mode as uinteger)
			' declare sub 	 cpinti_ENTRER_SectionCritique	(TID as uinteger, mode as uinteger, delai as uinteger)
			
			' declare function cpinti_thread_args				(NoARG as integer) as ANY PTR
			' declare function cpinti_ordonnancement_init		(_ID as uinteger, P0 as integer) as integer
			
			' declare function cpinti_creer_processus			(ID_KERNEL as uinteger, NomProcessus as CONST ZString PTR) as uinteger
			' declare function cpinti_sortir_processus		(ID_KERNEL as uinteger, PID as uinteger) as integer
			' declare function cpinti_arreter_processus		(ID_KERNEL as uinteger, PID as uinteger) as integer
			' declare function cpinti_etat_processus			(ID_KERNEL as uinteger, PID as uinteger) as uinteger
			' declare function cpinti_gerer_processus			(ID_KERNEL as uinteger, PID as uinteger, ACTION as uinteger) as integer
			' declare function cpinti_get_nom_processus		(ID_KERNEL as uinteger, PID as uinteger, NomThread as CONST ZString PTR) as integer
			
			' declare function cpinti_creer_thread			(ID_KERNEL as uinteger, ID_OS as uinteger, ID_USER as uinteger, PID as uinteger, NomThread as CONST ZString PTR, Priorite as integer, byval Fonction as function(byval as any ptr) as any ptr, ARG_CP as any ptr, STR_TH as any ptr) as uinteger
			' declare function cpinti_joindre_thread			(ID_KERNEL as uinteger, PID as uinteger, TID as uinteger, CYCLES as integer) as uinteger
			' declare function cpinti_sortir_thread			(ID_KERNEL as uinteger, PID as uinteger, TID as uinteger) as integer
			' declare function cpinti_arreter_thread			(ID_KERNEL as uinteger, PID as uinteger, TID as uinteger) as integer
			' declare function cpinti_etat_thread				(ID_KERNEL as uinteger, PID as uinteger, TID as uinteger) as uinteger
			' declare function cpinti_gerer_thread			(ID_KERNEL as uinteger, PID as uinteger, TID as uinteger, ACTION as uinteger) as integer
			' declare function cpinti_get_nom_thread			(ID_KERNEL as uinteger, PID as uinteger, TID as uinteger, NomThread as CONST ZString PTR) as integer			
			
			' declare function cpinti_testOpenGL				() as integer
			' declare function cpinti_testExeLoader			(Source as CONST ZSTRING PTR) as integer
			
			
			' Declare function cpinti_serveur					(port as uinteger, NombreClients as integer, ID as uinteger, TypeServeur as integer) as integer
			' declare function cpinti_client					(AdresseDistant as CONST ZString ptr, port as uinteger, PID as uinteger, TypeClient as integer) as integer
			
			' declare function cpinti_get_net_info			(NoPort as uinteger, _inf as uinteger) as uinteger

			' declare function cpinti_get_net_envoye			() as uinteger
			' declare function cpinti_get_net_recu			() as uinteger
			' Declare function cpinti_get_net_machines		() as uinteger
			' declare function cpinti_get_net_activite		() as uinteger
			
			' declare function cpinti_get_nombre_processus	() as uinteger
			' declare function cpinti_get_nombre_threads		() as uinteger
			' declare sub cpinti_update_cycle_cpu				()
			' declare function cpinti_get_cycle_cpu			() as uinteger
			' declare function cpinti_get_max_cycle_cpu		() as uinteger
			' declare function cpinti_get_pourcent_cpu		() as integer
			' Declare sub cpinti_evaluation_cycle_cpu			()

			' declare function cpinti_ping_icmp				(AdresseDistant As CONST ZString Ptr, Message As CONST ZString Ptr, param as integer) as integer
			' declare function Verifier_Pilote_Reseau			() as integer
			
			' declare function cpinti_GEST_BUFF_c				(_ID as uinteger, _Source as integer, _DONNEES as CONST ZString ptr) as integer
			' declare function cpinti_GEST_BUFF_c				(_ID as uinteger, _Source as integer, _DONNEES as ZString ptr) as integer
			
			' declare function Initialiser_MT_Timer			() as boolean
			' declare function Stop_MT_Timer					() as boolean
			' Declare Constructor()
			' Declare Destructor()
			
		' End type ' Class CPINTI
	
	
		
		
	end namespace ' cpinti
end extern

declare sub fb_Sleep alias "fb_Sleep" ( byval amount as long = -1 )

#define doevents(temps) 				cpinti.cpinti_doevents(temps)
#define ENTRER_SectionCritique() 		cpinti.gestionnaire_tache.begin_SectionCritique()
#define SORTIR_SectionCritique() 		cpinti.gestionnaire_tache.end_SectionCritique()

type FnIntHandler as function cdecl( byval as uinteger) as integer

declare function fb_dos_timer_handler cdecl alias "fb_dos_timer_handler" (byval irq as uinteger) as integer

declare function fb_isr_set cdecl alias "fb_isr_set"( _
	byval irq_number as uinteger, _
    byval pfnIntHandler as FnIntHandler, _
    byval size as uinteger, _
    byval stack_size as uinteger = 0) as integer

declare function fb_isr_reset cdecl alias "fb_isr_reset"( _
	byval irq_number as uinteger ) as integer

declare function fb_isr_get cdecl alias "fb_isr_get"( _
	byval irq_number as uinteger ) as FnIntHandler


dim shared isr_data_start as byte
dim shared timer_ticks as integer
dim shared old_isr as FnIntHandler
dim shared isr_data_end as byte
