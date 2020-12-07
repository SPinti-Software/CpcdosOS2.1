/*
	******************* ENTETE *******************
	
             ===== ========================== =====
    ============= ******** Wrapper ********* =============
 ================  Cpcdos OSx & CPinti Core  ================
    ============= ************************** =============
            ===== ========================== =====

			Auteur Sebastien FAVIER
	  Contributeur Vous!
	
	  Copyright (c) microsf01
	  http://cpcdos.fr.nf/
	  
 Condition :
	Ce fichier réservé uniquement aux adhérants du developpement C/C++ 
	du noyau. Pour toutes questions : sebastien.ordinateur@hotmail.fr

 Description :
	Header/Wrapper du noyau Cpcdos & CPinti Core pour la programmation 
	C/C++ de modules externe. Ceci va permettre aux adhérants de créer 
	des fonctions native pour cpcdos. Il s'agit d'un header qui 
	contient la liste des fonctions de Cpcdos dont le developpeur aura 
	besoin pour developper ses fonction afin qu'il soit nativement  
	dependant des fonctions du noyau sans passer par le CpcdosC+.
	
		Creation le 25 avril 2016
							
		Mise a jour le 16 Juillet 2019

*/



extern "C" int			cpc_mouse_state					(int param); /* 0:Clic state (1:left 2:right 3:middle) | 1:Position X | 2:Position Y | 3:Scrool wheel */
extern "C" int			cpc_set_mouse					(int px, int py, bool visible);
extern "C" int			cpc_get_key						();

extern "C" int 			cpc_Creer_Contexte				(int TAILLEX, int TAILLEYn);
extern "C" void* 		cpc_Obtenir_Zone_Contexte		(int ID);
extern "C" int 			cpc_Blitter						(int ID);
extern "C" void 		cpc_CCP_Exec_Commande			(const char* COMMANDE, int ID);
extern "C" char*		cpc_CCP_Lire_Variable			(const char* NomVariable, int Niveau);
extern "C" int 			cpc_CCP_Exec_Thread_cpc			(const char* chemin, int Thread_Priorite);

extern "C" char*		cpc_Exec_en_cours				(int ARG);

extern "C" void			cpc_cpinti_debug_plus_cpinticore(const char* texte, int Ecran, int Log, int Alerte, int RetourPLGN, int CR_LF, int DisplDate, int Signature, const char* File);
extern "C" void			cpc_cpinti_debug_cpinticore		(const char* texte, int alerte);

extern "C" int			cpc_cpinti_Fichier_Existe		(const char* chemin);
extern "C" unsigned int	cpc_cpinti_Taille_Fichier		(const char* chemin);
extern "C" int 			cpc_cpinti_Lire_Fichier_complet	(const char* Chemin, const char* Mode, char *retour_str);

extern "C" void			cpc_cpinti_sleep_us				(unsigned int temp_us);
extern "C" void			cpc_cpinti_sleep_ms				(unsigned int temp_ms);
extern "C" void			cpc_cpinti_sleep_sec			(unsigned int temp_sec);

extern "C" double 		cpc_cpinti_Obtenir_Temps_ms		(double Temps_av);

extern "C" unsigned int cpc_Thread_En_Cours				();
extern "C" bool		 	cpc_supprimer_Thread			(unsigned int TID, bool force);
extern "C" bool		 	cpc_doevents					(int temps);

extern "C" void			cpc_EntrerSectionCritique 		();
extern "C" void			cpc_SortirSectionCritique 		();

	
#ifndef DEFINITION_WRAPPER
	#define DEFINITION_WRAPPER
	#include <stdarg.h> // Pour les arguments de fdebug_log
	class CpcdosOSx_CPintiCore
	{
		public:
		
		// ************ For 3D Graphic engine ************
		int				Mouse_state				(int param); /* 0:Clic state (1:left 2:right 3:middle) | 1:Position X | 2:Position Y | 3:Scrool wheel */
		int				Set_mouse				(int px, int py, bool visible);
		int				Get_key					();
		
		int 			Create_Context			(int TAILLEX, int TAILLEYn);			// Creer un contexte de donnees
		void* 			Init_Get_Context_PTR	(int ID);								// Initialiser et obtenir le pointeur du contexte
		void 			Blitting				(int ID);								// Blitter le buffer
		
		
		// ***************** CpcdosC+ Engine *****************
		void 			Shell_CCP				(const char* COMMAND, int LEVEL);		// Executer une commande CpcdosC+<
		char*			Shell_ReadVariable		(const char* VariableName, int LEVEL);	// Lire une variable CpcdosC+
		int 			Shell_FILE				(const char* FILE, int THREAD_PRIORITY); // Executer un fichier CpcdosC+ multithreadé ou pas
		
		// ******************** Cpcdos OSx ********************
		char* 			Get_Path(int ARG);												// Obtenir le chemin d'acces en cours
		
		// ******************* CPinti Core *******************
		void 			fdebug_log				(int alert, const char* format, ...);	// Debug formatable
		void			debug_log				(const char* text, int alert);			// Debug bref
		void			debug_log_plus			(const char* texte, int Ecran, int Log,
													int Alerte, int RetourPLGN, int CR_LF, 
													int DisplDate, int Parameters, 
													const char* File); 					// Debug normal
		
		int			 	File_exist				(char* path);							// Renvoie 1 OK 0 FAUX
		int			 	File_exist				(const char* path);						// Renvoie 1 OK 0 FAUX
		unsigned int 	File_size				(char* path);							// Obtenir la taille d'un fichier
		unsigned int 	File_size				(const char* path);						// Obtenir la taille d'un fichier
		int 			File_read_all			(const char* path, const char* mode, 
													char *data);						// Lire TOUT le contenu d'un fichier
		int 			File_read_all			(char* path, char* mode, 
													char *data);
		
		void			usleep					(unsigned int microseconds);			// Pause en micro secondes
		void			sleep					(unsigned int milliseconds);			// Pause en milli secondes
		void			ssleep					(unsigned int seconds);					// Pause en secondes
		double 			get_time_ms				(double Temps_av);						// Obtenir le temps actuel en millisecondes
		
		unsigned int	get_CurrentThread		();										// Obtenir le numero du thread ID en cours
		bool			stop_Thread				(unsigned int TID, bool force);			// Obtenir le numero du thread ID en cours
		void			doevents				(int temps);							// Release CPU
		void			Enter_CriticalSection	();	
		void			Exit_CriticalSection	();
		
	};
	
	//////////////////// For 3D Graphic engine ////////////////////
	
	inline int CpcdosOSx_CPintiCore::Mouse_state (int param)
	{
		/* 
			0:Clic state (1:left 2:right 3:middle)
			1:Position X
			2:Position Y
			3:Scrool wheel 
		*/
		
		return cpc_mouse_state(param);
		
	}
	
	inline int CpcdosOSx_CPintiCore::Set_mouse (int px, int py, bool visible)
	{
		return cpc_set_mouse(px, py, visible);
	}
	inline int CpcdosOSx_CPintiCore::Get_key ()
	{
		return cpc_get_key();
	}
	
	inline int CpcdosOSx_CPintiCore::Create_Context(int TAILLEX, int TAILLEYn)
	{
		return cpc_Creer_Contexte(TAILLEX, TAILLEYn);
		
	}
	
	inline void* CpcdosOSx_CPintiCore::Init_Get_Context_PTR(int ID)
	{
		return cpc_Obtenir_Zone_Contexte(ID);
	}
	
	inline void CpcdosOSx_CPintiCore::Blitting(int ID)
	{
		cpc_Blitter(ID);
	}
	
	////////////////////// For CpcdosC+ //////////////////////
	inline void CpcdosOSx_CPintiCore::Shell_CCP(const char* COMMAND, int LEVEL)
	{
		cpc_CCP_Exec_Commande(COMMAND, LEVEL);
	}
	
	inline char* CpcdosOSx_CPintiCore::Shell_ReadVariable(const char* VariableName, int LEVEL)
	{
		return cpc_CCP_Lire_Variable(VariableName, LEVEL);
	}
	
	
	
	inline int CpcdosOSx_CPintiCore::Shell_FILE(const char* FILE, int Thread_Priority)
	{
		return cpc_CCP_Exec_Thread_cpc(FILE, Thread_Priority);
	}
	
	
	//////////////////// For Cpcdos OSx ////////////////////
	inline char* CpcdosOSx_CPintiCore::Get_Path(int ARG)
	{
		return (char*) cpc_Exec_en_cours(ARG);
	}
	
	//////////////////// For CPinti Core ////////////////////	
	
	inline void CpcdosOSx_CPintiCore::fdebug_log(int alert, const char* format, ...)
	{
		// Cette fonction permet d'utiliser le simuler un sprintf()
		va_list arg;
		char BUFFER[1024] = {0};
		
		va_start (arg, format);
			vsprintf (BUFFER, format, arg);
		va_end (arg);
		
		
		cpc_cpinti_debug_cpinticore((char*) BUFFER, alert);
		
		// Remplir le buffer de ZEROS
		memset(BUFFER, '\0', sizeof(char)*1024);

	}
	
	inline void CpcdosOSx_CPintiCore::debug_log(const char* text, int alert)
	{
		cpc_cpinti_debug_cpinticore(text, alert);
	}

	inline void CpcdosOSx_CPintiCore::debug_log_plus(const char* texte, int Ecran, int Log, int Alerte, int RetourPLGN, int CR_LF, int DisplDate, int Signature, const char* File)
	{
		cpc_cpinti_debug_plus_cpinticore(texte, Ecran, Log, Alerte, RetourPLGN, CR_LF, DisplDate, Signature, File);
	}
	
		// ---
	inline int CpcdosOSx_CPintiCore::File_exist(char* path)
	{
		return cpc_cpinti_Fichier_Existe((const char*) path);
	}
	inline int CpcdosOSx_CPintiCore::File_exist(const char* path)
	{
		return cpc_cpinti_Fichier_Existe(path);
	}
	// ---
	inline unsigned int CpcdosOSx_CPintiCore::File_size(char* path)
	{
		return cpc_cpinti_Taille_Fichier((const char*) path);
	}
	
	inline unsigned int CpcdosOSx_CPintiCore::File_size(const char* path)
	{
		return cpc_cpinti_Taille_Fichier(path);
	}
	// ---
	inline int CpcdosOSx_CPintiCore::File_read_all(const char* path, const char* mode, char* data)
	{
		return (int) cpc_cpinti_Lire_Fichier_complet(path, mode, data);
	}
	inline int CpcdosOSx_CPintiCore::File_read_all(char* path, char* mode, char* data)
	{
		return (int) cpc_cpinti_Lire_Fichier_complet((const char*) path, (const char*) mode, data);
	}
	// ---
	
	// Time
	inline void CpcdosOSx_CPintiCore::usleep(unsigned int microseconds)
	{
		cpc_cpinti_sleep_us(microseconds);
	}
	inline void CpcdosOSx_CPintiCore::sleep(unsigned int milliseconds)
	{
		cpc_cpinti_sleep_ms(milliseconds);
	}
	inline void CpcdosOSx_CPintiCore::ssleep(unsigned int seconds)
	{
		cpc_cpinti_sleep_sec(seconds);
	}
	
	inline double CpcdosOSx_CPintiCore::get_time_ms(double Temps_av)
	{
		return cpc_cpinti_Obtenir_Temps_ms(Temps_av);
	}
	
	//////////////////// Thread manager  ////////////////////
	inline unsigned int CpcdosOSx_CPintiCore::get_CurrentThread()
	{
		return cpc_Thread_En_Cours();
	}
	
	inline bool CpcdosOSx_CPintiCore::stop_Thread(unsigned int TID, bool force)
	{
		return cpc_supprimer_Thread(TID, force);
	}
	
	inline void CpcdosOSx_CPintiCore::doevents(int temps)
	{
		cpc_doevents(temps);
	}
	
	inline void CpcdosOSx_CPintiCore::Enter_CriticalSection()
	{
		cpc_EntrerSectionCritique();
	}
	
	inline void CpcdosOSx_CPintiCore::Exit_CriticalSection()
	{
		cpc_SortirSectionCritique();
	}
 
	//////////////////// For  ////////////////////
	//////////////////// For  ////////////////////
	//////////////////// For  ////////////////////

#endif





