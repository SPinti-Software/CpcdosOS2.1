; ModuleID = 'Test.cpp'
target datalayout = "e-m:e-p:32:32-i64:64-f80:32-n8:16:32-a:0:32-S32"
target triple = "i686-pc-windows-gnu-elf"

%class.CpcdosOSx_CPintiCore = type { i8 }

@.str = private unnamed_addr constant [14 x i8] c"txt/ hello :)\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fix/ tata = 123\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"txt/ tata = /C(%tata% * 2)\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"txt/ Resultat de tata : %TATA%\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Bye tous le monde!\0A\00", align 1

; Function Attrs: nounwind
define x86_thiscallcc i32 @_ZN20CpcdosOSx_CPintiCore14Create_ContextEii(%class.CpcdosOSx_CPintiCore* %this, i32 %TAILLEX, i32 %TAILLEYn) #0 align 2 {
entry:
  %this.addr = alloca %class.CpcdosOSx_CPintiCore*, align 4
  %TAILLEX.addr = alloca i32, align 4
  %TAILLEYn.addr = alloca i32, align 4
  store %class.CpcdosOSx_CPintiCore* %this, %class.CpcdosOSx_CPintiCore** %this.addr, align 4
  store i32 %TAILLEX, i32* %TAILLEX.addr, align 4
  store i32 %TAILLEYn, i32* %TAILLEYn.addr, align 4
  %this1 = load %class.CpcdosOSx_CPintiCore*, %class.CpcdosOSx_CPintiCore** %this.addr, align 4
  %0 = load i32, i32* %TAILLEX.addr, align 4
  %1 = load i32, i32* %TAILLEYn.addr, align 4
  %call = call i32 @cpc_Creer_Contexte(i32 %0, i32 %1)
  ret i32 %call
}

declare i32 @cpc_Creer_Contexte(i32, i32) #1

; Function Attrs: nounwind
define x86_thiscallcc i8* @_ZN20CpcdosOSx_CPintiCore20Init_Get_Context_PTREi(%class.CpcdosOSx_CPintiCore* %this, i32 %ID) #0 align 2 {
entry:
  %this.addr = alloca %class.CpcdosOSx_CPintiCore*, align 4
  %ID.addr = alloca i32, align 4
  store %class.CpcdosOSx_CPintiCore* %this, %class.CpcdosOSx_CPintiCore** %this.addr, align 4
  store i32 %ID, i32* %ID.addr, align 4
  %this1 = load %class.CpcdosOSx_CPintiCore*, %class.CpcdosOSx_CPintiCore** %this.addr, align 4
  %0 = load i32, i32* %ID.addr, align 4
  %call = call i8* @cpc_Obtenir_Zone_Contexte(i32 %0)
  ret i8* %call
}

declare i8* @cpc_Obtenir_Zone_Contexte(i32) #1

; Function Attrs: nounwind
define x86_thiscallcc void @_ZN20CpcdosOSx_CPintiCore8BlittingEi(%class.CpcdosOSx_CPintiCore* %this, i32 %ID) #0 align 2 {
entry:
  %this.addr = alloca %class.CpcdosOSx_CPintiCore*, align 4
  %ID.addr = alloca i32, align 4
  store %class.CpcdosOSx_CPintiCore* %this, %class.CpcdosOSx_CPintiCore** %this.addr, align 4
  store i32 %ID, i32* %ID.addr, align 4
  %this1 = load %class.CpcdosOSx_CPintiCore*, %class.CpcdosOSx_CPintiCore** %this.addr, align 4
  %0 = load i32, i32* %ID.addr, align 4
  %call = call i32 @cpc_Blitter(i32 %0)
  ret void
}

declare i32 @cpc_Blitter(i32) #1

; Function Attrs: nounwind
define x86_thiscallcc void @_ZN20CpcdosOSx_CPintiCore9Shell_CCPEPKci(%class.CpcdosOSx_CPintiCore* %this, i8* %COMMAND, i32 %LEVEL) #0 align 2 {
entry:
  %this.addr = alloca %class.CpcdosOSx_CPintiCore*, align 4
  %COMMAND.addr = alloca i8*, align 4
  %LEVEL.addr = alloca i32, align 4
  store %class.CpcdosOSx_CPintiCore* %this, %class.CpcdosOSx_CPintiCore** %this.addr, align 4
  store i8* %COMMAND, i8** %COMMAND.addr, align 4
  store i32 %LEVEL, i32* %LEVEL.addr, align 4
  %this1 = load %class.CpcdosOSx_CPintiCore*, %class.CpcdosOSx_CPintiCore** %this.addr, align 4
  %0 = load i8*, i8** %COMMAND.addr, align 4
  %1 = load i32, i32* %LEVEL.addr, align 4
  call void @cpc_CCP_Exec_Commande(i8* %0, i32 %1)
  ret void
}

declare void @cpc_CCP_Exec_Commande(i8*, i32) #1

; Function Attrs: nounwind
define x86_thiscallcc i32 @_ZN20CpcdosOSx_CPintiCore10Shell_FILEEPKci(%class.CpcdosOSx_CPintiCore* %this, i8* %FILE, i32 %Thread_Priority) #0 align 2 {
entry:
  %this.addr = alloca %class.CpcdosOSx_CPintiCore*, align 4
  %FILE.addr = alloca i8*, align 4
  %Thread_Priority.addr = alloca i32, align 4
  store %class.CpcdosOSx_CPintiCore* %this, %class.CpcdosOSx_CPintiCore** %this.addr, align 4
  store i8* %FILE, i8** %FILE.addr, align 4
  store i32 %Thread_Priority, i32* %Thread_Priority.addr, align 4
  %this1 = load %class.CpcdosOSx_CPintiCore*, %class.CpcdosOSx_CPintiCore** %this.addr, align 4
  %0 = load i8*, i8** %FILE.addr, align 4
  %1 = load i32, i32* %Thread_Priority.addr, align 4
  %call = call i32 @cpc_CCP_Exec_Thread_cpc(i8* %0, i32 %1)
  ret i32 %call
}

declare i32 @cpc_CCP_Exec_Thread_cpc(i8*, i32) #1

; Function Attrs: nounwind
define x86_thiscallcc i8* @_ZN20CpcdosOSx_CPintiCore8Get_PathEi(%class.CpcdosOSx_CPintiCore* %this, i32 %ARG) #0 align 2 {
entry:
  %this.addr = alloca %class.CpcdosOSx_CPintiCore*, align 4
  %ARG.addr = alloca i32, align 4
  store %class.CpcdosOSx_CPintiCore* %this, %class.CpcdosOSx_CPintiCore** %this.addr, align 4
  store i32 %ARG, i32* %ARG.addr, align 4
  %this1 = load %class.CpcdosOSx_CPintiCore*, %class.CpcdosOSx_CPintiCore** %this.addr, align 4
  %0 = load i32, i32* %ARG.addr, align 4
  %call = call i8* @cpc_Exec_en_cours(i32 %0)
  ret i8* %call
}

declare i8* @cpc_Exec_en_cours(i32) #1

; Function Attrs: nounwind
define void @_ZN20CpcdosOSx_CPintiCore10fdebug_logEiPKcz(%class.CpcdosOSx_CPintiCore* %this, i32 %alert, i8* %format, ...) #0 align 2 {
entry:
  %this.addr = alloca %class.CpcdosOSx_CPintiCore*, align 4
  %alert.addr = alloca i32, align 4
  %format.addr = alloca i8*, align 4
  %BUFFER = alloca [1024 x i8], align 1
  store %class.CpcdosOSx_CPintiCore* %this, %class.CpcdosOSx_CPintiCore** %this.addr, align 4
  store i32 %alert, i32* %alert.addr, align 4
  store i8* %format, i8** %format.addr, align 4
  %this1 = load %class.CpcdosOSx_CPintiCore*, %class.CpcdosOSx_CPintiCore** %this.addr, align 4
  %0 = bitcast [1024 x i8]* %BUFFER to i8*
  call void @llvm.memset.p0i8.i32(i8* %0, i8 0, i32 1024, i32 1, i1 false)
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %BUFFER, i32 0, i32 0
  %1 = load i32, i32* %alert.addr, align 4
  call void @cpc_cpinti_debug_cpinticore(i8* %arraydecay, i32 %1)
  %arraydecay2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %BUFFER, i32 0, i32 0
  call void @llvm.memset.p0i8.i32(i8* %arraydecay2, i8 0, i32 1024, i32 1, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) #2

declare void @cpc_cpinti_debug_cpinticore(i8*, i32) #1

; Function Attrs: nounwind
define x86_thiscallcc void @_ZN20CpcdosOSx_CPintiCore9debug_logEPKci(%class.CpcdosOSx_CPintiCore* %this, i8* %text, i32 %alert) #0 align 2 {
entry:
  %this.addr = alloca %class.CpcdosOSx_CPintiCore*, align 4
  %text.addr = alloca i8*, align 4
  %alert.addr = alloca i32, align 4
  store %class.CpcdosOSx_CPintiCore* %this, %class.CpcdosOSx_CPintiCore** %this.addr, align 4
  store i8* %text, i8** %text.addr, align 4
  store i32 %alert, i32* %alert.addr, align 4
  %this1 = load %class.CpcdosOSx_CPintiCore*, %class.CpcdosOSx_CPintiCore** %this.addr, align 4
  %0 = load i8*, i8** %text.addr, align 4
  %1 = load i32, i32* %alert.addr, align 4
  call void @cpc_cpinti_debug_cpinticore(i8* %0, i32 %1)
  ret void
}

; Function Attrs: nounwind
define x86_thiscallcc void @_ZN20CpcdosOSx_CPintiCore14debug_log_plusEPKciiiiiiiS1_(%class.CpcdosOSx_CPintiCore* %this, i8* %texte, i32 %Ecran, i32 %Log, i32 %Alerte, i32 %RetourPLGN, i32 %CR_LF, i32 %DisplDate, i32 %Signature, i8* %File) #0 align 2 {
entry:
  %this.addr = alloca %class.CpcdosOSx_CPintiCore*, align 4
  %texte.addr = alloca i8*, align 4
  %Ecran.addr = alloca i32, align 4
  %Log.addr = alloca i32, align 4
  %Alerte.addr = alloca i32, align 4
  %RetourPLGN.addr = alloca i32, align 4
  %CR_LF.addr = alloca i32, align 4
  %DisplDate.addr = alloca i32, align 4
  %Signature.addr = alloca i32, align 4
  %File.addr = alloca i8*, align 4
  store %class.CpcdosOSx_CPintiCore* %this, %class.CpcdosOSx_CPintiCore** %this.addr, align 4
  store i8* %texte, i8** %texte.addr, align 4
  store i32 %Ecran, i32* %Ecran.addr, align 4
  store i32 %Log, i32* %Log.addr, align 4
  store i32 %Alerte, i32* %Alerte.addr, align 4
  store i32 %RetourPLGN, i32* %RetourPLGN.addr, align 4
  store i32 %CR_LF, i32* %CR_LF.addr, align 4
  store i32 %DisplDate, i32* %DisplDate.addr, align 4
  store i32 %Signature, i32* %Signature.addr, align 4
  store i8* %File, i8** %File.addr, align 4
  %this1 = load %class.CpcdosOSx_CPintiCore*, %class.CpcdosOSx_CPintiCore** %this.addr, align 4
  %0 = load i8*, i8** %texte.addr, align 4
  %1 = load i32, i32* %Ecran.addr, align 4
  %2 = load i32, i32* %Log.addr, align 4
  %3 = load i32, i32* %Alerte.addr, align 4
  %4 = load i32, i32* %RetourPLGN.addr, align 4
  %5 = load i32, i32* %CR_LF.addr, align 4
  %6 = load i32, i32* %DisplDate.addr, align 4
  %7 = load i32, i32* %Signature.addr, align 4
  %8 = load i8*, i8** %File.addr, align 4
  call void @cpc_cpinti_debug_plus_cpinticore(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i8* %8)
  ret void
}

declare void @cpc_cpinti_debug_plus_cpinticore(i8*, i32, i32, i32, i32, i32, i32, i32, i8*) #1

; Function Attrs: nounwind
define x86_thiscallcc i32 @_ZN20CpcdosOSx_CPintiCore10File_existEPc(%class.CpcdosOSx_CPintiCore* %this, i8* %path) #0 align 2 {
entry:
  %this.addr = alloca %class.CpcdosOSx_CPintiCore*, align 4
  %path.addr = alloca i8*, align 4
  store %class.CpcdosOSx_CPintiCore* %this, %class.CpcdosOSx_CPintiCore** %this.addr, align 4
  store i8* %path, i8** %path.addr, align 4
  %this1 = load %class.CpcdosOSx_CPintiCore*, %class.CpcdosOSx_CPintiCore** %this.addr, align 4
  %0 = load i8*, i8** %path.addr, align 4
  %call = call i32 @cpc_cpinti_Fichier_Existe(i8* %0)
  ret i32 %call
}

declare i32 @cpc_cpinti_Fichier_Existe(i8*) #1

; Function Attrs: nounwind
define x86_thiscallcc i32 @_ZN20CpcdosOSx_CPintiCore10File_existEPKc(%class.CpcdosOSx_CPintiCore* %this, i8* %path) #0 align 2 {
entry:
  %this.addr = alloca %class.CpcdosOSx_CPintiCore*, align 4
  %path.addr = alloca i8*, align 4
  store %class.CpcdosOSx_CPintiCore* %this, %class.CpcdosOSx_CPintiCore** %this.addr, align 4
  store i8* %path, i8** %path.addr, align 4
  %this1 = load %class.CpcdosOSx_CPintiCore*, %class.CpcdosOSx_CPintiCore** %this.addr, align 4
  %0 = load i8*, i8** %path.addr, align 4
  %call = call i32 @cpc_cpinti_Fichier_Existe(i8* %0)
  ret i32 %call
}

; Function Attrs: nounwind
define x86_thiscallcc i32 @_ZN20CpcdosOSx_CPintiCore9File_sizeEPc(%class.CpcdosOSx_CPintiCore* %this, i8* %path) #0 align 2 {
entry:
  %this.addr = alloca %class.CpcdosOSx_CPintiCore*, align 4
  %path.addr = alloca i8*, align 4
  store %class.CpcdosOSx_CPintiCore* %this, %class.CpcdosOSx_CPintiCore** %this.addr, align 4
  store i8* %path, i8** %path.addr, align 4
  %this1 = load %class.CpcdosOSx_CPintiCore*, %class.CpcdosOSx_CPintiCore** %this.addr, align 4
  %0 = load i8*, i8** %path.addr, align 4
  %call = call i32 @cpc_cpinti_Taille_Fichier(i8* %0)
  ret i32 %call
}

declare i32 @cpc_cpinti_Taille_Fichier(i8*) #1

; Function Attrs: nounwind
define x86_thiscallcc i32 @_ZN20CpcdosOSx_CPintiCore9File_sizeEPKc(%class.CpcdosOSx_CPintiCore* %this, i8* %path) #0 align 2 {
entry:
  %this.addr = alloca %class.CpcdosOSx_CPintiCore*, align 4
  %path.addr = alloca i8*, align 4
  store %class.CpcdosOSx_CPintiCore* %this, %class.CpcdosOSx_CPintiCore** %this.addr, align 4
  store i8* %path, i8** %path.addr, align 4
  %this1 = load %class.CpcdosOSx_CPintiCore*, %class.CpcdosOSx_CPintiCore** %this.addr, align 4
  %0 = load i8*, i8** %path.addr, align 4
  %call = call i32 @cpc_cpinti_Taille_Fichier(i8* %0)
  ret i32 %call
}

; Function Attrs: nounwind
define x86_thiscallcc i32 @_ZN20CpcdosOSx_CPintiCore13File_read_allEPKcS1_Pc(%class.CpcdosOSx_CPintiCore* %this, i8* %path, i8* %mode, i8* %data) #0 align 2 {
entry:
  %this.addr = alloca %class.CpcdosOSx_CPintiCore*, align 4
  %path.addr = alloca i8*, align 4
  %mode.addr = alloca i8*, align 4
  %data.addr = alloca i8*, align 4
  store %class.CpcdosOSx_CPintiCore* %this, %class.CpcdosOSx_CPintiCore** %this.addr, align 4
  store i8* %path, i8** %path.addr, align 4
  store i8* %mode, i8** %mode.addr, align 4
  store i8* %data, i8** %data.addr, align 4
  %this1 = load %class.CpcdosOSx_CPintiCore*, %class.CpcdosOSx_CPintiCore** %this.addr, align 4
  %0 = load i8*, i8** %path.addr, align 4
  %1 = load i8*, i8** %mode.addr, align 4
  %2 = load i8*, i8** %data.addr, align 4
  %call = call i32 @cpc_cpinti_Lire_Fichier_complet(i8* %0, i8* %1, i8* %2)
  ret i32 %call
}

declare i32 @cpc_cpinti_Lire_Fichier_complet(i8*, i8*, i8*) #1

; Function Attrs: nounwind
define x86_thiscallcc i32 @_ZN20CpcdosOSx_CPintiCore13File_read_allEPcS0_S0_(%class.CpcdosOSx_CPintiCore* %this, i8* %path, i8* %mode, i8* %data) #0 align 2 {
entry:
  %this.addr = alloca %class.CpcdosOSx_CPintiCore*, align 4
  %path.addr = alloca i8*, align 4
  %mode.addr = alloca i8*, align 4
  %data.addr = alloca i8*, align 4
  store %class.CpcdosOSx_CPintiCore* %this, %class.CpcdosOSx_CPintiCore** %this.addr, align 4
  store i8* %path, i8** %path.addr, align 4
  store i8* %mode, i8** %mode.addr, align 4
  store i8* %data, i8** %data.addr, align 4
  %this1 = load %class.CpcdosOSx_CPintiCore*, %class.CpcdosOSx_CPintiCore** %this.addr, align 4
  %0 = load i8*, i8** %path.addr, align 4
  %1 = load i8*, i8** %mode.addr, align 4
  %2 = load i8*, i8** %data.addr, align 4
  %call = call i32 @cpc_cpinti_Lire_Fichier_complet(i8* %0, i8* %1, i8* %2)
  ret i32 %call
}

; Function Attrs: nounwind
define x86_thiscallcc void @_ZN20CpcdosOSx_CPintiCore6usleepEj(%class.CpcdosOSx_CPintiCore* %this, i32 %microseconds) #0 align 2 {
entry:
  %this.addr = alloca %class.CpcdosOSx_CPintiCore*, align 4
  %microseconds.addr = alloca i32, align 4
  store %class.CpcdosOSx_CPintiCore* %this, %class.CpcdosOSx_CPintiCore** %this.addr, align 4
  store i32 %microseconds, i32* %microseconds.addr, align 4
  %this1 = load %class.CpcdosOSx_CPintiCore*, %class.CpcdosOSx_CPintiCore** %this.addr, align 4
  %0 = load i32, i32* %microseconds.addr, align 4
  call void @cpc_cpinti_sleep_us(i32 %0)
  ret void
}

declare void @cpc_cpinti_sleep_us(i32) #1

; Function Attrs: nounwind
define x86_thiscallcc void @_ZN20CpcdosOSx_CPintiCore5sleepEj(%class.CpcdosOSx_CPintiCore* %this, i32 %milliseconds) #0 align 2 {
entry:
  %this.addr = alloca %class.CpcdosOSx_CPintiCore*, align 4
  %milliseconds.addr = alloca i32, align 4
  store %class.CpcdosOSx_CPintiCore* %this, %class.CpcdosOSx_CPintiCore** %this.addr, align 4
  store i32 %milliseconds, i32* %milliseconds.addr, align 4
  %this1 = load %class.CpcdosOSx_CPintiCore*, %class.CpcdosOSx_CPintiCore** %this.addr, align 4
  %0 = load i32, i32* %milliseconds.addr, align 4
  call void @cpc_cpinti_sleep_ms(i32 %0)
  ret void
}

declare void @cpc_cpinti_sleep_ms(i32) #1

; Function Attrs: nounwind
define x86_thiscallcc void @_ZN20CpcdosOSx_CPintiCore6ssleepEj(%class.CpcdosOSx_CPintiCore* %this, i32 %seconds) #0 align 2 {
entry:
  %this.addr = alloca %class.CpcdosOSx_CPintiCore*, align 4
  %seconds.addr = alloca i32, align 4
  store %class.CpcdosOSx_CPintiCore* %this, %class.CpcdosOSx_CPintiCore** %this.addr, align 4
  store i32 %seconds, i32* %seconds.addr, align 4
  %this1 = load %class.CpcdosOSx_CPintiCore*, %class.CpcdosOSx_CPintiCore** %this.addr, align 4
  %0 = load i32, i32* %seconds.addr, align 4
  call void @cpc_cpinti_sleep_sec(i32 %0)
  ret void
}

declare void @cpc_cpinti_sleep_sec(i32) #1

; Function Attrs: nounwind
define x86_thiscallcc double @_ZN20CpcdosOSx_CPintiCore11get_time_msEd(%class.CpcdosOSx_CPintiCore* %this, double %Temps_av) #0 align 2 {
entry:
  %this.addr = alloca %class.CpcdosOSx_CPintiCore*, align 4
  %Temps_av.addr = alloca double, align 8
  store %class.CpcdosOSx_CPintiCore* %this, %class.CpcdosOSx_CPintiCore** %this.addr, align 4
  store double %Temps_av, double* %Temps_av.addr, align 8
  %this1 = load %class.CpcdosOSx_CPintiCore*, %class.CpcdosOSx_CPintiCore** %this.addr, align 4
  %0 = load double, double* %Temps_av.addr, align 8
  %call = call double @cpc_cpinti_Obtenir_Temps_ms(double %0)
  ret double %call
}

declare double @cpc_cpinti_Obtenir_Temps_ms(double) #1

; Function Attrs: nounwind
define i32 @Jit_Main(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 4
  %instance_cpcdos = alloca %class.CpcdosOSx_CPintiCore*, align 4
  store i8* %arg, i8** %arg.addr, align 4
  %call = call noalias i8* @_Znwj(i32 1) #4
  %0 = bitcast i8* %call to %class.CpcdosOSx_CPintiCore*
  store %class.CpcdosOSx_CPintiCore* %0, %class.CpcdosOSx_CPintiCore** %instance_cpcdos, align 4
  %1 = load %class.CpcdosOSx_CPintiCore*, %class.CpcdosOSx_CPintiCore** %instance_cpcdos, align 4
  call x86_thiscallcc void @_ZN20CpcdosOSx_CPintiCore9Shell_CCPEPKci(%class.CpcdosOSx_CPintiCore* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 5)
  %2 = load %class.CpcdosOSx_CPintiCore*, %class.CpcdosOSx_CPintiCore** %instance_cpcdos, align 4
  call x86_thiscallcc void @_ZN20CpcdosOSx_CPintiCore9Shell_CCPEPKci(%class.CpcdosOSx_CPintiCore* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 5)
  %3 = load %class.CpcdosOSx_CPintiCore*, %class.CpcdosOSx_CPintiCore** %instance_cpcdos, align 4
  call x86_thiscallcc void @_ZN20CpcdosOSx_CPintiCore9Shell_CCPEPKci(%class.CpcdosOSx_CPintiCore* %3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), i32 5)
  %4 = load %class.CpcdosOSx_CPintiCore*, %class.CpcdosOSx_CPintiCore** %instance_cpcdos, align 4
  call x86_thiscallcc void @_ZN20CpcdosOSx_CPintiCore9Shell_CCPEPKci(%class.CpcdosOSx_CPintiCore* %4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i32 5)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  ret i32 1
}

; Function Attrs: nobuiltin
declare noalias i8* @_Znwj(i32) #3

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nobuiltin "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { builtin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (branches/release_38)"}
