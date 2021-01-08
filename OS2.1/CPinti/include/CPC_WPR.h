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
							
		Mise a jour le 28 octobre 2016

*/


extern "C" long 			cpc_Creer_Contexte				(long TAILLEX, long TAILLEYn);
extern "C" void* 		cpc_Obtenir_Zone_Contexte		(long ID);
extern "C" long 			cpc_Blitter						(long ID);
extern "C" void 		cpc_CCP_Exec_Commande			(const char* COMMANDE, long ID);
extern "C" long 			cpc_CCP_Exec_Thread_cpc			(const char* chemin, long Thread_Priorite);

extern "C" char*		cpc_Exec_en_cours				(long ARG);

extern "C" void			cpc_cpinti_debug_plus_cpinticore(const char* texte, long Ecran, long Log, long Alerte, long RetourPLGN, long CR_LF, long DisplDate, long Signature, const char* File);
extern "C" void			cpc_cpinti_debug_cpinticore		(const char* texte, long alerte);
extern "C" long			cpc_cpinti_Fichier_Existe		(const char* chemin);
extern "C" unsigned long	cpc_cpinti_Taille_Fichier		(const char* chemin);
extern "C" long 			cpc_cpinti_Lire_Fichier_complet	(const char* Chemin, const char* Mode, char *retour_str);

extern "C" void			cpc_cpinti_sleep_us				(unsigned long temp_us);
extern "C" void			cpc_cpinti_sleep_ms				(unsigned long temp_ms);
extern "C" void			cpc_cpinti_sleep_sec			(unsigned long temp_sec);

extern "C" double 		cpc_cpinti_Obtenir_Temps_ms		(double Temps_av);

	
#ifndef DEFINITION_WRAPPER
	#define DEFINITION_WRAPPER
	#include <cstdarg> // Pour les arguments de fdebug_log
	#include <string.h> // Pour memset
	class CpcdosOSx_CPintiCore
	{
		public:
		// ************ For GZE 3D Graphic engine ************
		long 			Create_Context			(long TAILLEX, long TAILLEYn);			// Creer un contexte de donnees
		void* 			Init_Get_Context_PTR	(long ID);								// Initialiser et obtenir le pointeur du contexte
		void 			Blitting				(long ID);								// Blitter le buffer
		
		
		// ***************** CpcdosC+ Engine *****************
		void 			Shell_CCP				(const char* COMMAND, long LEVEL);		// Executer une commande CpcdosC+<
		long 			Shell_FILE				(const char* FILE, long THREAD_PRIORITY); // Executer un fichier CpcdosC+ multithreadé ou pas
		
		// ******************** Cpcdos OSx ********************
		char* 			Get_Path(long ARG);												// Obtenir le chemin d'acces en cours
		
		// ******************* CPinti Core *******************
		void 			fdebug_log				(long alert, const char* format, ...);	// Debug formatable
		void			debug_log				(const char* text, long alert);			// Debug bref
		void			debug_log_plus			(const char* texte, long Ecran, long Log,
													long Alerte, long RetourPLGN, long CR_LF, 
													long DisplDate, long Parameters, 
													const char* File); 					// Debug normal
		
		long			 	File_exist				(char* path);							// Renvoie 1 OK 0 FAUX
		long			 	File_exist				(const char* path);						// Renvoie 1 OK 0 FAUX
		unsigned long 	File_size				(char* path);							// Obtenir la taille d'un fichier
		unsigned long 	File_size				(const char* path);						// Obtenir la taille d'un fichier
		long 			File_read_all			(const char* path, const char* mode, 
													char *data);						// Lire TOUT le contenu d'un fichier
		long 			File_read_all			(char* path, char* mode, 
													char *data);
		
		void			usleep					(unsigned long microseconds);			// Pause en micro secondes
		void			sleep					(unsigned long milliseconds);			// Pause en milli secondes
		void			ssleep					(unsigned long seconds);					// Pause en secondes
		double 			get_time_ms				(double Temps_av);						// Obtenir le temps actuel en millisecondes
		
	};
	
	//////////////////// For GZE 3D Graphic engine ////////////////////
	long CpcdosOSx_CPintiCore::Create_Context(long TAILLEX, long TAILLEYn)
	{
		return cpc_Creer_Contexte(TAILLEX, TAILLEYn);
		
	}
	
	void* CpcdosOSx_CPintiCore::Init_Get_Context_PTR(long ID)
	{
		return cpc_Obtenir_Zone_Contexte(ID);
	}
	
	void CpcdosOSx_CPintiCore::Blitting(long ID)
	{
		cpc_Blitter(ID);
	}
	
	////////////////////// For CpcdosC+ //////////////////////
	void CpcdosOSx_CPintiCore::Shell_CCP(const char* COMMAND, long LEVEL)
	{
		cpc_CCP_Exec_Commande(COMMAND, LEVEL);
	}
	
	long CpcdosOSx_CPintiCore::Shell_FILE(const char* _file, long Thread_Priority)
	{
		return cpc_CCP_Exec_Thread_cpc(_file, Thread_Priority);
	}
	
	
	//////////////////// For Cpcdos OSx ////////////////////
	char* CpcdosOSx_CPintiCore::Get_Path(long ARG)
	{
		return cpc_Exec_en_cours(ARG);
	}
	
	//////////////////// For CPinti Core ////////////////////	
	
	void CpcdosOSx_CPintiCore::fdebug_log(long alert, const char* format, ...)
	{
		// Cette fonction permet d'utiliser le simuler un sprintf()
		va_list arg;
		char BUFFER[1024] = {0};
		
		va_start (arg, format);
			vsprintf (BUFFER, format, arg);
		va_end (arg);
		
		
		cpc_cpinti_debug_cpinticore(BUFFER, alert);
		
		// Remplir le buffer de ZEROS
		memset(BUFFER, '\0', sizeof(char)*1024);

	}
	
	void CpcdosOSx_CPintiCore::debug_log(const char* text, long alert)
	{
		cpc_cpinti_debug_cpinticore(text, alert);
	}

	void CpcdosOSx_CPintiCore::debug_log_plus(const char* texte, long Ecran, long Log, long Alerte, long RetourPLGN, long CR_LF, long DisplDate, long Signature, const char* File)
	{
		cpc_cpinti_debug_plus_cpinticore(texte, Ecran, Log, Alerte, RetourPLGN, CR_LF, DisplDate, Signature, File);
	}
	
		// ---
	long CpcdosOSx_CPintiCore::File_exist(char* path)
	{
		return cpc_cpinti_Fichier_Existe(path);
	}
	long CpcdosOSx_CPintiCore::File_exist(const char* path)
	{
		return cpc_cpinti_Fichier_Existe(path);
	}
	// ---
	unsigned long CpcdosOSx_CPintiCore::File_size(char* path)
	{
		return cpc_cpinti_Taille_Fichier(path);
	}
	unsigned long CpcdosOSx_CPintiCore::File_size(const char* path)
	{
		return cpc_cpinti_Taille_Fichier(path);
	}
	// ---
	long CpcdosOSx_CPintiCore::File_read_all(const char* path, const char* mode, char* data)
	{
		return cpc_cpinti_Lire_Fichier_complet(path, mode, data);
	}
	long CpcdosOSx_CPintiCore::File_read_all(char* path, char* mode, char* data)
	{
		return cpc_cpinti_Lire_Fichier_complet(path, mode, data);
	}
	// ---
	
	// Time
	void CpcdosOSx_CPintiCore::usleep(unsigned long microseconds)
	{
		cpc_cpinti_sleep_us(microseconds);
	}
	void CpcdosOSx_CPintiCore::sleep(unsigned long milliseconds)
	{
		cpc_cpinti_sleep_ms(milliseconds);
	}
	void CpcdosOSx_CPintiCore::ssleep(unsigned long seconds)
	{
		cpc_cpinti_sleep_sec(seconds);
	}
	
	double CpcdosOSx_CPintiCore::get_time_ms(double Temps_av)
	{
		return cpc_cpinti_Obtenir_Temps_ms(Temps_av);
	}
	
	//////////////////// For  ////////////////////
	//////////////////// For  ////////////////////
	//////////////////// For  ////////////////////
	//////////////////// For  ////////////////////

#endif





