' Moteur/SHELL CpcdosC+ - 

' Par Sebastien FAVIER
' Reecriture le 23/01/2017
' Mise a jour le 07/03/2019

#include "cpcdos.bi"

#print * Threads parentaux SHELL
Function Shell_THREAD cdecl Alias "Shell_THREAD" (ByVal thread_struct as _STRUCT_THREAD_Cpcdos_OSx__) as integer : On local Error Goto Intercept_Error
	
	' ============= PUBLIC VARIABLES =============
	Dim _PID as uinteger			= thread_struct.PROC_ID
	Dim _TID as uinteger			= thread_struct.THREAD_ID
	Dim _USERID as uinteger			= thread_struct.USER_ID
	Dim _OSID as uinteger			= thread_struct.OS_ID
	Dim _KERNEL_ID as uinteger		= thread_struct.KERNEL_ID
	
	' **** Recuperer les arguments d'entre ****
	Dim _ARG_1 as String 			= *cast(CONST String ptr, thread_struct.ARG_1)
	' Dim _ARG_2 as double 			= cast(double, thread_struct.ARG_2)
	Dim _ARG_3 as Integer 			= cast(Integer, thread_struct.ARG_3)
	Dim _ARG_4 as Integer 			= cast(Integer, thread_struct.ARG_4)
	Dim _ARG_5 as String 			= *cast(CONST String ptr, thread_struct.ARG_5)
	
	dim Nouvelle_Cle as double = CPCDOS_INSTANCE.Generer_cle(_KERNEL_ID, _OSID, _USERID, _PID, _TID)
	' ============= PUBLIC VARIABLES =============
	
	Dim Etat_Thread as uinteger
	Dim EN_VIE as boolean = true
	Function = CPCDOS_INSTANCE.__THREAD_DEFAUT
	
	while(EN_VIE)
		Etat_Thread = cpinti.gestionnaire_tache.cpinti_etat_thread(1, thread_struct.PROC_ID, thread_struct.THREAD_ID)

		if Etat_Thread = CPCDOS_INSTANCE.__ARRETE 		Then EN_VIE = FALSE : Exit While ' Arreter le thread
		if Etat_Thread = CPCDOS_INSTANCE.__EN_ARRET 	Then EN_VIE = FALSE : Exit While ' Arreter le thread
		if Etat_Thread = CPCDOS_INSTANCE.__EN_PAUSE 	Then Continue While	' Mettre en pause/Sauter le code
		if Etat_Thread = CPCDOS_INSTANCE.__EN_ATTENTE 	Then Continue While	' Mettre en pause/Sauter le code
		if Etat_Thread = CPCDOS_INSTANCE.__EN_EXECUTION Then				' Executer le thread normalement
		
		SCOPE
			' ********* D E B U T  *********
			
			' CPCDOS_INSTANCE.En_Charge(true)
			CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CpcdosCP_SHELL(_ARG_1, Nouvelle_Cle, _ARG_3, _ARG_4, _ARG_5)
			' CPCDOS_INSTANCE.En_Charge(false)
			
			EN_VIE = false
		
			'  ********* F I N  *********
			
		END SCOPE
		end if
		
		doevents(0)
	wend
	

	return CPCDOS_INSTANCE.__THREAD_OK
	
	' *** E R R O R   I N T E R C E P T I O N ***
	Intercept_Error:
		cpinti.interception.Erreur_Fatale(Err, Erl, cptr(ZString ptr, Ermn), cptr(ZString ptr, Erfn))
End Function




#print * Threads parentaux WRAPPER
Function Wrapper_THREAD cdecl Alias "Wrapper_THREAD" (ByVal thread_struct as _STRUCT_THREAD_Cpcdos_OSx__) as integer : On local Error Goto Intercept_Error
	
	' ============= PUBLIC VARIABLES =============
	Dim _PID as uinteger			= thread_struct.PROC_ID
	Dim _TID as uinteger			= thread_struct.THREAD_ID
	Dim _USERID as uinteger			= thread_struct.USER_ID
	Dim _OSID as uinteger			= thread_struct.OS_ID
	Dim _KERNEL_ID as uinteger		= thread_struct.KERNEL_ID
	Dim _THRD_NOM as string			= thread_struct.Nom
	
	DIM CLE as double = CPCDOS_INSTANCE.Generer_cle(thread_struct.KERNEL_ID, thread_struct.OS_ID, thread_struct.USER_ID, thread_struct.PROC_ID, thread_struct.THREAD_ID)
	
	' **** Recuperer les arguments d'entre ****
	Dim ARG_CP as integer 			= cast(integer, thread_struct.ARG_CP) 			' Function ID
	Dim _ARG_1 as CONST String 		= *cast(CONST String ptr, thread_struct.ARG_1) 	' argument 1	
	Dim _ARG_2 as integer 			= cast(integer, thread_struct.ARG_2) 			' argument 2
	Dim _ARG_3 as any ptr  			= thread_struct.ARG_3							' argument 3
	Dim _ARG_4 as any ptr 			= thread_struct.ARG_4 							' argument 4
	Dim _ARG_5 as any ptr 			= thread_struct.ARG_5 							' argument 5
	
	' ============= PUBLIC VARIABLES =============
	
	
	
	Dim Etat_Thread as uinteger
	Dim EN_VIE as boolean = true
	Function = CPCDOS_INSTANCE.__THREAD_DEFAUT
	Dim Resultat as integer
	
	while(EN_VIE)
		Etat_Thread = cpinti.gestionnaire_tache.cpinti_etat_thread(1, thread_struct.PROC_ID, thread_struct.THREAD_ID)

		if Etat_Thread = CPCDOS_INSTANCE.__ARRETE 		Then EN_VIE = FALSE : Exit While ' Arreter le thread
		if Etat_Thread = CPCDOS_INSTANCE.__EN_ARRET 	Then EN_VIE = FALSE : Exit While ' Arreter le thread
		if Etat_Thread = CPCDOS_INSTANCE.__EN_PAUSE 	Then Continue While	' Mettre en pause/Sauter le code
		if Etat_Thread = CPCDOS_INSTANCE.__EN_ATTENTE 	Then Continue While	' Mettre en pause/Sauter le code
		if Etat_Thread = CPCDOS_INSTANCE.__EN_EXECUTION Then				' Executer le thread normalement
		
		SCOPE
			' ********* D E B U T  *********
	
			Resultat = Exec_WRAPPER(ARG_CP, CLE, _ARG_1, _ARG_2, _ARG_3, _ARG_4, _ARG_5)
			
			EN_VIE = false
			
			'  ********* F I N  *********
			
		END SCOPE
		end if
		
		doevents(0)
	wend
	

	return CPCDOS_INSTANCE.__THREAD_OK
	
	' *** E R R O R   I N T E R C E P T I O N ***
	Intercept_Error:
		cpinti.interception.Erreur_Fatale(Err, Erl, cptr(ZString ptr, Ermn), cptr(ZString ptr, Erfn))
End Function


