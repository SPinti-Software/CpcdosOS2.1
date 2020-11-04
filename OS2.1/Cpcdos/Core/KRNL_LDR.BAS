
#include "Cpcdos.bi"

#print
#print ============ KRNL_LDR ==============


#ifndef CPCDOSLIB
	__CPCDOS_INIT_1(0)
#endif

 ' Open "test.txt" For Append As #1
    ' Print #1, "extending test.txt"
    ' Close #1

dim shared texte as ZString ptr

dim shared Compteur(0 to 12) as uinteger

sub Tache1 cdecl Alias "Tache1"(signal as integer)
	Dim id as integer = 1
	while(1)
		Compteur(id) += 1
		if Compteur(id) > 1000000 Then Compteur(id) = 0
		
		
		sleep 50
		
		' afficher()
	wend
end sub

sub Tache2 cdecl Alias "Tache2"(signal as integer)
	Dim id as integer = 2
	while(1)
		Compteur(id) += 1
		if Compteur(id) > 1000000 Then Compteur(id) = 0
		
		sleep 50
		' afficher()
	wend
end sub

sub Tache3 cdecl Alias "Tache3"(signal as integer)
	Dim id as integer = 3
	while(1)
		Compteur(id) += 1
		if Compteur(id) > 1000000 Then Compteur(id) = 0

		sleep 50
		' afficher()

	wend
end sub

sub Tache4 cdecl Alias "Tache4"(signal as integer)
	Dim id as integer = 4
	dim touche as string
	while(1)
		Compteur(id) += 1
		if Compteur(id) > 1000000 Then Compteur(id) = 0
		touche = inkey
		sleep 50
		' afficher()
		locate 23, 1
		if len(touche) > 0 then print "                     TOUCHE : '" & touche & "'"

	wend
end sub

sub Tache5(signal as integer)
	Dim id as integer = 5
	while(1)
		' NP_cpinti_mt.switch_context()
		__dpmi_yield()
		
		NP_cpinti_mt.Interruption_Timer(0)
		
		Compteur(id) += 1
		if Compteur(id) > 1000000 Then Compteur(id) = 0
	wend
end sub

sub Tache6(signal as integer)
	Dim id as integer = 6
	while(1)
		' NP_cpinti_mt.switch_context()
		Compteur(id) += 1
		sleep 50
		if Compteur(id) > 1000000 Then Compteur(id) = 0
	wend
end sub

sub Tache7(signal as integer)
	Dim id as integer = 7
	while(1)
		sleep 100
		Compteur(id) += 1
		if Compteur(id) > 1000000 Then Compteur(id) = 0
	wend
end sub

sub Tache8(signal as integer)
	Dim id as integer = 8
	while(1)
		sleep 400
		Compteur(id) += 1
		if Compteur(id) > 1000000 Then Compteur(id) = 0
	wend
end sub

sub Tache9(signal as integer)
	Dim id as integer = 9
	while(1)
		sleep 800
		Compteur(id) += 1
		if Compteur(id) > 1000000 Then Compteur(id) = 0
	wend
end sub

sub Tache10(signal as integer)
	Dim id as integer = 10
	while(1)
		sleep 1200
		Compteur(id) += 1
		if Compteur(id) > 1000000 Then Compteur(id) = 0
	wend
end sub

public sub printf_fb cdecl Alias "printf_fb"(texte as ZString ptr)
	locate 15, 0
	print *texte
End sub

public function fb_setjmp cdecl Alias "fb_setjmp" (byval buffer as jmp_buf ptr) as long
	return setjmp(buffer)
End function

public sub fb_longjmp cdecl Alias "fb_longjmp" (byval buffer as jmp_buf ptr, byval nomb as long)
	longjmp(buffer, nomb)
End sub




dim shared int_compt as integer

public Sub afficher cdecl Alias "afficher"()


	' __dpmi_yield

	sleep 1000
	NP_cpinti_mt.begin_SectionCritique()
	
	int_compt += 1
	
	if int_compt > 1000000 then int_compt = 0
	
	locate 24, 1
	print " #### Interrupt " & int_compt & " #### "

	print " Task 1 : " & Compteur(1) & ".      " & CRLF & _
		  " Task 2 : " & Compteur(2) & ".      " & CRLF & _
		  " Task 3 : " & Compteur(3) & ".      " &CRLF  &_
		  " Task 4 : " & Compteur(4) & ".      " &CRLF  &_
		  " Task 5 : " & Compteur(5) & ".      " &CRLF  &_
		  " Task 6 : " & Compteur(6) & ".      " &CRLF  &_
		  " Task 7 : " & Compteur(7) & ".      " &CRLF  &_
		  " Task 8 : " & Compteur(8) & ".      " &CRLF  &_
		  " Task 9 : " & Compteur(9) & ".      " &CRLF & _
		  " Task 10: " & Compteur(10) & ".      "
	
	
	for boucle as integer = 0 to 10
		Compteur(boucle) = 0
	next boucle
	
	NP_cpinti_mt.end_SectionCritique()
	
	
	
	
End sub

private function isr_timer cdecl( byval irq_number as uinteger) as integer
    
	return 0
end function
private sub isr_timer_end cdecl()
end sub

#print * ENTRY POINT
public function __CPCDOS_INIT_1 cdecl Alias "__CPCDOS_INIT_1"(a as integer) as integer

	cls
	' screen 19
	
	' Afficher le logo d'intro
	intro()
	
	print "Init ..."
	sleep 200
	NP_cpinti_interception.initialise_interception_exception()
	sleep 600
	cls
	
	texte = allocate(1024)
	
	
	dim as byte ptr fin_
	dim as byte ptr debut_
	
	debut_ = cast( byte ptr, @Thread_MAIN )
	fin_ = cast( byte ptr, @intro )
	_go32_dpmi_lock_code(@debut_, (@fin_ - @debut_))
	_go32_dpmi_lock_data(@debut_, (@fin_ - @debut_))
	
	debut_ = cast( byte ptr, @Tache1 )
	fin_ = cast( byte ptr, @Tache2 )
	_go32_dpmi_lock_code(@debut_, (@fin_ - @debut_))
	_go32_dpmi_lock_data(@debut_, (@fin_ - @debut_))
	
	debut_ = cast( byte ptr, @Tache2 )
	fin_ = cast( byte ptr, @Tache3 )
	_go32_dpmi_lock_code(@debut_, (@fin_ - @debut_))
	_go32_dpmi_lock_data(@debut_, (@fin_ - @debut_))
	
	debut_ = cast( byte ptr, @Tache3 )
	fin_ = cast( byte ptr, @Tache4 )
	_go32_dpmi_lock_code(@debut_, (@fin_ - @debut_))
	_go32_dpmi_lock_data(@debut_, (@fin_ - @debut_))
	
	debut_ = cast( byte ptr, @Tache4 )
	fin_ = cast( byte ptr, @Tache5 )
	_go32_dpmi_lock_code(@debut_, (@fin_ - @debut_))
	_go32_dpmi_lock_data(@debut_, (@fin_ - @debut_))
	
	' NP_cpinti_mt.initialisation()
	
	' Print " * Initialisation du PIT"
	' NP_cpinti_mt.initialiser_PIT(0, 200)
	
	' Print " * Initialisation du Timer at 0x" & hex(@NP_cpinti_mt.Interruption_Timer, 8)
	' dim id as uinteger = NP_cpinti_mt.ajouter_Timer(cast(uinteger, @NP_cpinti_mt.Interruption_Timer))
	
	' Print "   OK -> ID:" & id
	
	
	Print " * Initialisation du multitask "
	NP_cpinti_mt.initialiser_Multitache()

	
	Print " * Ajout des taches"
	NP_cpinti_mt.ajouter_Thread(cast(uinteger, @Tache1), 0)
	NP_cpinti_mt.ajouter_Thread(cast(uinteger, @Tache2), 0)
	NP_cpinti_mt.ajouter_Thread(cast(uinteger, @Tache3), 0)
	NP_cpinti_mt.ajouter_Thread(cast(uinteger, @Tache4), 0)
	NP_cpinti_mt.ajouter_Thread(cast(uinteger, @Tache5), 0)
	NP_cpinti_mt.ajouter_Thread(cast(uinteger, @Tache6), 0)
	NP_cpinti_mt.ajouter_Thread(cast(uinteger, @Tache7), 0)
	NP_cpinti_mt.ajouter_Thread(cast(uinteger, @Tache8), 0)
	NP_cpinti_mt.ajouter_Thread(cast(uinteger, @Tache9), 0)
	NP_cpinti_mt.ajouter_Thread(cast(uinteger, @Tache10), 250)
	
	
	
	' screen 19
	
	
	' if _go32_dpmi_lock_data( @isr_data_start, @isr_data_end - @isr_data_start )<>0 then
		' print "Failed to lock data"
		' end 1
	' end if

	' old_isr = fb_isr_get( 1 )

	' dim as byte ptr ptr_end = cast( byte ptr, @isr_timer_end )
	' dim as byte ptr ptr_start = cast( byte ptr, @isr_timer )
	' if 0 = fb_isr_set( 1, @isr_timer, ptr_end - ptr_start, 16384 ) then
		' print "Failed to lock ISR"
		' end 1
	' end if
	
	
	
	print " * Demarrage du scheduler"
	' NP_cpinti_mt.demarrer_SCHEDULER(id, 1000)
	
	' cls
	Print " * Loop"
	NP_cpinti_mt.loop_MAIN()
	
	Print " END"
	return 0
	
End Function



Public Sub Thread_MAIN cdecl Alias "Thread_MAIN"(signal as integer)
	' Il s'agit du thread MAIN
	
	dim compt as uinteger = 0
	while(1)
	
		
		sleep 55
		afficher()
		
		' NP_cpinti_mt.Interruption_Timer(0)
		
		' __dpmi_yield()
		
		' NP_cpinti_mt.begin_SectionCritique()
		' fb_dos_timer_handler(0)
		' NP_cpinti_mt.end_SectionCritique()
		
		' sleep(52)
		
	wend
	
End sub

#print * Intro
Sub intro()
	' Cette procedure SUB permet d'afficher le logo cpcdos et reste en pause 1 seconde
	Print "                                                  "
	Print "    ======================                        "
	Print "    =      --   --   --  =    --    -     --      "
	Print "    =     |    |__| |    =   |  ) (   )   \       "
	Print "    =      --  |     --  =    --    -    --       "
	Print "    ===========================================   "
	Print "         --   --   --    =  --    -     --    =   "
	Print "        |    |__| |      = |  ) (   )   \     =   "
	Print "         --  |     --    =  --    -    --     =   "
	Print "                         ======================   "
	Print "    CPCDOS OSx                                    "
	Print "                       Cr‚e Pour Concevoir Des OS "
	Print "                           Created for develop OS "
	Print " Version :                                        "
	Print "  - Date   : " &   _VERSION_DATEV                  
	Print "  - Kernel : OS" & _VERSION_MAJEUR & " " & _VERSION_MINEUR
	Print "  - CCP    : " &    _VERSION_CCP                    
	Print "  - CONSOLE: " &    _VERSION_CONSOLE                
	Print "  - SCI    : " &    _VERSION_SCI                    
	sleep 1000
end sub


Public Sub rest_scr0 cdecl Alias "rest_scr0"
	screen 0
	cls
End sub




