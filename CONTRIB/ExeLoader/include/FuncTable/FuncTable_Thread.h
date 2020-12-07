/*  -== ExeLoader ==-
 *
 *  Load .exe / .dll from memory and remap functions
 *  Run your binaries on any x86 hardware
 *
 *  @autors
 *   - Maeiky
 *  
 * Copyright (c) 2020 - V·Liance / SPinti-Software. All rights reserved.
 *
 * The contents of this file are subject to the Apache License Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * If a copy of the Apache License Version 2.0 was not distributed with this file,
 * You can obtain one at https://www.apache.org/licenses/LICENSE-2.0.html

* Description:
* 
* FuncTable_Impl is the ExeLoader custom implementation. 
* Main goal is to be portable which does not relying on system functions
* 
*/

//!VOID WINAPI Sleep (DWORD dwMilliseconds)
VOID WINAPI th_Sleep (DWORD dwMilliseconds){
	showfunc_opt("Sleep( dwMilliseconds: %d )", dwMilliseconds);
	#if defined(Func_Win) || !defined(NO_Windows_Sleep)
		Sleep(dwMilliseconds);
	#else
	#endif
}


//==== TLS === //

void** aTlsNewMem = 0;
//!DWORD TlsAlloc()
DWORD WINAPI th_TlsAlloc(void){
   	showfunc_opt("TlsAlloc( )", "");
	static int _nIndex = 0;
	static int _nMax = 0;
	if(_nIndex >= _nMax){ //Realloc
		int _nNewSize = _nMax*2 + 5; 
		
		 void** _aNewMem = (void**)calloc(_nNewSize, sizeof(void*));
		 memcpy(_aNewMem, aTlsNewMem, _nMax*sizeof(void*) );
		 free(aTlsNewMem);
		 aTlsNewMem = _aNewMem;
		 
		 _nMax = _nNewSize;
		// _EXE_LOADER_DEBUG(3,"TlsAlloc() : [ReAlloc] size: %d\n","TlsAlloc() : [ReAlloc] size: %d\n", _nNewSize);
	}
	
	_EXE_LOADER_DEBUG(3,"TlsAlloc() : %d\n","TlsAlloc() : %d\n", _nIndex);
	_nIndex++;
	return _nIndex-1;
}

//!BOOL TlsSetValue(DWORD  dwTlsIndex,LPVOID lpTlsValue)
BOOL  WINAPI th_TlsSetValue(DWORD dwTlsIndex, _In_opt_ LPVOID lpTlsValue){
	showfunc_opt("TlsSetValue( dwTlsIndex: %d, lpTlsValue: %p )", dwTlsIndex, lpTlsValue);
	//if(lpTlsValue != 0){showfunc_opt(3,"TlsSetValue() : %d [0x%p] value : %d\n","TlsSetValue() : %d [0x%p] value : %d\n", dwTlsIndex, lpTlsValue, *(int*)lpTlsValue );
	//}else{showfunc_opt(3,"TlsSetValue() : %d [0x%p]\n"		    ,"TlsSetValue() : %d [0x%p]\n",			   dwTlsIndex, lpTlsValue);}
   aTlsNewMem[dwTlsIndex] = lpTlsValue;
   return true;
}

//!LPVOID TlsGetValue(DWORD dwTlsIndex)
LPVOID WINAPI th_TlsGetValue(DWORD dwTlsIndex){
	showfunc_opt("TlsGetValue( dwTlsIndex: %d )", dwTlsIndex);
   //if(aTlsNewMem[dwTlsIndex] != 0){_EXE_LOADER_DEBUG(3,"TlsGetValue() : %d [0x%p] value : %d\n","TlsGetValue() : %d [0x%p] value : %d\n", dwTlsIndex, aTlsNewMem[dwTlsIndex], *(int*)aTlsNewMem[dwTlsIndex]);
   //}else{_EXE_LOADER_DEBUG(3,"TlsGetValue() : %d [0x%p]\n"		     ,"TlsGetValue() : %d [0x%p]\n",		   dwTlsIndex, aTlsNewMem[dwTlsIndex]);}
   return aTlsNewMem[dwTlsIndex];
}

//!BOOL TlsFree(DWORD dwTlsIndex)
BOOL WINAPI th_TlsFree(DWORD dwTlsIndex){
	showfunc_opt("TlsFree( dwTlsIndex: %d )", dwTlsIndex);
	//_EXE_LOADER_DEBUG(3,"TlsFree() : %d [0x%p] value : %d\n","TlsFree() : %d [0x%p] value: %d\n", dwTlsIndex, aTlsNewMem[dwTlsIndex], *(int*)aTlsNewMem[dwTlsIndex]);
	aTlsNewMem[dwTlsIndex] = 0;
	return true;
}

//!BOOL Thread32First(HANDLE hSnapshot,LPTHREADENTRY32 lpte)
BOOL WINAPI th_Thread32First(HANDLE hSnapshot,void* lpte){
	showfunc("Thread32First( hSnapshot: %p, lpte: %p )", hSnapshot,lpte);
	return 0;
}

//!BOOL Thread32Next(HANDLE hSnapshot,LPTHREADENTRY32 lpte)
BOOL WINAPI th_Thread32Next(HANDLE hSnapshot,void* lpte){
	showfunc("Thread32Next( hSnapshot: %p, lpte: %p )", hSnapshot,lpte);
	return 0;
}


//typedef struct _RTL_CONDITION_VARIABLE { PVOID Ptr; } RTL_CONDITION_VARIABLE,*PRTL_CONDITION_VARIABLE;
//typedef RTL_CONDITION_VARIABLE CONDITION_VARIABLE, *PCONDITION_VARIABLE;
//!WINBOOL WINAPI SleepConditionVariableCS (PCONDITION_VARIABLE ConditionVariable, PCRITICAL_SECTION CriticalSection, DWORD dwMilliseconds)
WINBOOL WINAPI thread_SleepConditionVariableCS (PCONDITION_VARIABLE ConditionVariable, PCRITICAL_SECTION CriticalSection, DWORD dwMilliseconds){
	showfunc("SleepConditionVariableCS( ConditionVariable: %p, CriticalSection: %p, dwMilliseconds: %d)",ConditionVariable, CriticalSection,dwMilliseconds);
	return false;
}
 
//!VOID WINAPI WakeConditionVariable (PCONDITION_VARIABLE ConditionVariable)
VOID WINAPI thread_WakeConditionVariable (PCONDITION_VARIABLE ConditionVariable){
	showfunc("WakeConditionVariable( ConditionVariable: %p)",ConditionVariable);
}


 //!uintptr_t _beginthreadex( void *security, unsigned stack_size, unsigned ( __stdcall *start_address )( void * ),void *arglist,unsigned initflag,unsigned *thrdaddr)
uintptr_t th_beginthreadex( void *security, unsigned stack_size, unsigned ( WINAPI* start_address )( void * ),void* arglist,unsigned initflag,unsigned *thrdaddr){
	showfunc("beginthreadex( security: %p, stack_size: %p, start_address: %p, arglist: %p, initflag: %d, thrdaddr: %d )", security,stack_size,start_address,arglist, initflag, thrdaddr); 
    
	uintptr_t thdl = 0;
	int err = 0;
	#if defined(Func_Win) || defined(USE_WinThread)
	if ( (thdl = (uintptr_t)CreateThread( (LPSECURITY_ATTRIBUTES)security,stack_size,(LPTHREAD_START_ROUTINE)start_address,(LPVOID)arglist,initflag,(LPDWORD)thrdaddr)) == (uintptr_t)0 ){
            err = GetLastError();
    }
	#endif
	return thdl;
}


/*
typedef struct _RTL_CRITICAL_SECTION {
  PRTL_CRITICAL_SECTION_DEBUG DebugInfo;
  LONG LockCount;
  LONG RecursionCount;
  HANDLE OwningThread;
  HANDLE LockSemaphore;
  ULONG_PTR SpinCount;
    } RTL_CRITICAL_SECTION,*PRTL_CRITICAL_SECTION;
*/
//RTL_CRITICAL_SECTION CriticalSection = {(PRTL_CRITICAL_SECTION_DEBUG)1,1,1,(HANDLE)1,(HANDLE)1,(ULONG_PTR)1};
//!VOID WINAPI InitializeCriticalSection (LPCRITICAL_SECTION lpCriticalSection)
int criticalSection_thread_ = 1;
VOID WINAPI th_InitializeCriticalSection(LPCRITICAL_SECTION lpCriticalSection){
 	showfunc_opt("InitializeCriticalSection( lpCriticalSection: %p )", lpCriticalSection);
	#if defined(Func_Win) || defined(USE_WinThread)
		InitializeCriticalSection(lpCriticalSection);
	#else
	//*lpCriticalSection = (_RTL_CRITICAL_SECTION*)malloc(sizeof(_RTL_CRITICAL_SECTION));
	lpCriticalSection->DebugInfo = 0;
	lpCriticalSection->LockCount = 1;
	lpCriticalSection->RecursionCount = 1;
	lpCriticalSection->OwningThread = (HANDLE)criticalSection_thread_; //fake thread
	lpCriticalSection->LockSemaphore = (HANDLE)1;
	lpCriticalSection->SpinCount = 1;
	//criticalSection_thread_ ++; //fake to bypass mesa assert
	#endif
}


//!VOID WINAPI EnterCriticalSection (LPCRITICAL_SECTION lpCriticalSection)
VOID WINAPI th_EnterCriticalSection(LPCRITICAL_SECTION lpCriticalSection){
 	showfunc_opt("EnterCriticalSection( lpCriticalSection: %p )", lpCriticalSection);
	#if defined(Func_Win) || defined(USE_WinThread)
		EnterCriticalSection(lpCriticalSection);
	#else
		lpCriticalSection->OwningThread = (HANDLE)criticalSection_thread_;
	//		criticalSection_thread_ ++; //fake to bypass mesa assert
		//*lpCriticalSection = CriticalSection;
	#endif
}

//!VOID WINAPI TryEnterCriticalSection (LPCRITICAL_SECTION lpCriticalSection)
VOID WINAPI th_TryEnterCriticalSection(LPCRITICAL_SECTION lpCriticalSection){
 	showfunc_opt("TryEnterCriticalSection( lpCriticalSection: %p )", lpCriticalSection);
	#if defined(Func_Win) || defined(USE_WinThread)
		TryEnterCriticalSection(lpCriticalSection);
	#else
		//*lpCriticalSection = CriticalSection;
	#endif
}

//!VOID WINAPI LeaveCriticalSection (LPCRITICAL_SECTION lpCriticalSection)
 VOID WINAPI th_LeaveCriticalSection(LPCRITICAL_SECTION lpCriticalSection){
 	showfunc_opt("LeaveCriticalSection( lpCriticalSection: %p )", lpCriticalSection);
	#if defined(Func_Win) || defined(USE_WinThread)
		LeaveCriticalSection(lpCriticalSection);
	#else
		lpCriticalSection->OwningThread = (HANDLE)0;
	#endif
}

//!VOID WINAPI DeleteCriticalSection (LPCRITICAL_SECTION lpCriticalSection)
 VOID WINAPI th_DeleteCriticalSection(LPCRITICAL_SECTION lpCriticalSection){
 	showfunc_opt("DeleteCriticalSection( lpCriticalSection: %p )", lpCriticalSection);
	#if defined(Func_Win) || defined(USE_WinThread)
		DeleteCriticalSection(lpCriticalSection);
	#else
	#endif
}

//!HANDLE CreateSemaphoreA(_In_opt_ LPSECURITY_ATTRIBUTES lpSemaphoreAttributes,_In_ LONG lInitialCount, _In_ LONG lMaximumCount, _In_opt_ LPCTSTR lpName)
//!HANDLE CreateSemaphoreW(_In_opt_ LPSECURITY_ATTRIBUTES lpSemaphoreAttributes,_In_ LONG lInitialCount, _In_ LONG lMaximumCount, _In_opt_ LPCWSTR lpName)
HANDLE WINAPI  th_CreateSemaphoreA( _In_opt_ LPSECURITY_ATTRIBUTES lpSemaphoreAttributes,_In_     LONG lInitialCount,_In_     LONG lMaximumCount,_In_opt_ LPCTSTR lpName){
	showfunc_opt("CreateSemaphoreA(  )","");
	#if defined(Func_Win) || defined(USE_WinThread)
	return CreateSemaphoreA(lpSemaphoreAttributes, lInitialCount, lMaximumCount, lpName);
	#else
	#endif
	return 0;
}
HANDLE  WINAPI  th_CreateSemaphoreW( //Must have __stdcall
 _In_opt_ LPSECURITY_ATTRIBUTES lpSemaphoreAttributes,
  _In_     LONG                  lInitialCount,
  _In_     LONG                  lMaximumCount,
  _In_opt_ LPCWSTR                lpName
){
	showfunc_unimplt("CreateSemaphoreW(  )","");
	#if defined(Func_Win) || defined(USE_WinThread)
	return CreateSemaphoreW(lpSemaphoreAttributes, lInitialCount, lMaximumCount, lpName);
	#else
	#endif
	return 0;
}

//!BOOL ReleaseSemaphore(HANDLE hSemaphore,LONG   lReleaseCount,LPLONG lpPreviousCount)
BOOL WINAPI th_ReleaseSemaphore(HANDLE hSemaphore,LONG   lReleaseCount,LPLONG lpPreviousCount){
	showfunc_opt("ReleaseSemaphore( hSemaphore: %p,  lReleaseCount: %p, lpPreviousCount: %p )", hSemaphore, lReleaseCount, lpPreviousCount);
	#if defined(Func_Win) || defined(USE_WinThread)
	return ReleaseSemaphore(hSemaphore, lReleaseCount, lpPreviousCount);
	#else
	return true;
	#endif	
}

 //!DWORD WINAPI WaitForSingleObject (HANDLE hHandle, DWORD dwMilliseconds)
 DWORD WINAPI th_WaitForSingleObject(HANDLE hHandle, DWORD dwMilliseconds){
	showfunc_opt("WaitForSingleObject( hHandle: %p,  dwMilliseconds: %d)", hHandle, dwMilliseconds);
	#if defined(Func_Win) || defined(USE_WinThread)
	return WaitForSingleObject(hHandle, dwMilliseconds);
	#else
	return 0;
	#endif	
 }
 
 
//!int WINAPI GetThreadPriority (HANDLE hThread)
int WINAPI th_GetThreadPriority(HANDLE hThread){
	showfunc("GetThreadPriority( hHandle: %p )", hThread);
	//return GetThreadPriority(hThread);
	#if defined(Func_Win) || defined(USE_WinThread)
	return GetThreadPriority(hThread);
	#else
	return 0;
	#endif	
	//return THREAD_PRIORITY_ERROR_RETURN; //THREAD_PRIORITY_ERROR_RETURN.
}


//!HANDLE WINAPI GetCurrentThread (VOID)
HANDLE WINAPI th_GetCurrentThread(VOID){
	showfunc("GetCurrentThread( )", "");
	#if defined(Func_Win) || defined(USE_WinThread)
	return GetCurrentThread();
	#else
	return 0;
	#endif
}