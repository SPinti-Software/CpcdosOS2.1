
typedef struct {
	HBITMAP hbmp;
	HWND hwnd_View;
	void* pixels;
	int idx;
	int width;
	int height;
	int off_x;
	int off_y;
	int mem_width;
	int mem_height;
	int id_context; // cpcdos
} ContextInf;
extern int aContext_count;
extern ContextInf aContext[50];

HWND pixView_createWindow(ContextInf* _context);
void pixView_update(ContextInf* _context);
void pixView_MakeSurface(ContextInf* _context);	

#define _(_)XEGI_Msg_##_
#define XEGI_Msg_(_)(XEGI_Msg_){XEGI_Msg_##_}
_enum_{
	_(LBUTTONDOWN),
	_(LBUTTONUP),
	_(MOUSEMOVE),
}enum_
#undef _


typedef struct {
	uint32_t handle;
	XEGI_Msg_  type;
	ptrdiff_t x;
	ptrdiff_t y;
} XEGI_SysMsg;

ARRAY(XEGI_aSysMsg, XEGI_SysMsg, 512);
// -- Instance -- //
XEGI_aSysMsg aSysMsg;
#define aSysMsg(fn, ...) XEGI_aSysMsg_##fn(&aSysMsg, ##__VA_ARGS__)
//!-----------!//

#include "XE/XEGI.inc"

//USED?
uint32_t Sys_ProcessMsg_ALL(){

	for(int i = 0; i < aSysMsg.size; i++){
		Sys_ProcessMsg(aSysMsg.data[i]);
	}
	aSysMsg(reset);
	return 0;
}

//IF have longjump
#include <setjmp.h> 
#include <signal.h>

bool bSetJumpMustReturn = false; 
jmp_buf jmp_thread_owner_return; 
////

typedef uint32_t (*XEGI_THREAD_START_ROUTINE) (void* threadParam);
typedef struct {
	XEGI_THREAD_START_ROUTINE mainfunc;
	bool executed;
	uint32_t id;
	uint32_t handle;
	void* param;
	jmp_buf jump; //IF have longjump
} XEGI_Thread;

ARRAY(XEGI_aThread, XEGI_Thread, 512);
uint32_t nCurrThread =0;
// -- Instance -- //
XEGI_aThread aThread={};
#define aThread(fn, ...) XEGI_aThread_##fn(&aThread, ##__VA_ARGS__)
//!-----------!//

void 
	XeGI_ExecuteThread(XEGI_Thread* th)
{
	if(!setjmp(jmp_thread_owner_return))
	{
		bSetJumpMustReturn = true;
		//_print("Lauch thread :%d", th->id);
		th->mainfunc( th->param );
		//TODO REMOVE THREAD if ended by itself
	}
	bSetJumpMustReturn = false;
}
void 
	XeGI_ExecuteNextThread()
{
	for(int i = 0; i< aThread.size; i++){
		nCurrThread++;
		if(nCurrThread>= aThread.size){nCurrThread = 0;}
		XeGI_ExecuteThread(&aThread.data[nCurrThread]);
	}
}
uintptr_t 
	XeGI_CreateThread(XEGI_THREAD_START_ROUTINE threadMain, uint32_t stackSize, void* threadParam)
{
	uintptr_t thdl =0;
	int err =0;

	#ifdef SIMULATE_MULTI_THREAD_TO_SINGLE_WORKER_TERMINATE_ON_SLEEP
	
		XEGI_Thread* th = aThread(add,(XEGI_Thread){.id=aThread.size, .mainfunc=threadMain, .param=threadParam }); //TODO deep copy param?
		XeGI_ExecuteThread(th);
		
	#else
		#if defined(Func_Win) || defined(USE_WinThread)
		//if ( (thdl = (uintptr_t)CreateThread( (LPSECURITY_ATTRIBUTES)security,stack_size,(LPTHREAD_START_ROUTINE)start_address,(LPVOID)arglist,initflag,(LPDWORD)thrdaddr)) == (uintptr_t)0 ){
		if ( (thdl = (uintptr_t)CreateThread(0,stackSize,(LPTHREAD_START_ROUTINE)threadMain,(LPVOID)threadParam,0,0))){
			err = GetLastError();
		}
		#endif
	#endif
	return thdl;
}
void 
	XeGI_Sleep(int32_t _ms)
{
	#ifdef SIMULATE_MULTI_THREAD_TO_SINGLE_WORKER_TERMINATE_ON_SLEEP
		
		if(bSetJumpMustReturn){
			longjmp(jmp_thread_owner_return,1); //Terminate current simulated thread, return to owner
		}else{
			//Call next thread
			XeGI_ExecuteNextThread();
		}
		_Sleep(1);//Minimal sleep
	#else
		_Sleep(_ms);
	#endif
}

#ifdef ShowPixView
#include "XE/Utils/PixView.h"
#endif

 //////// ////////
////// IMPL ////////
 //////// ////////
int aContext_count = 0;
ContextInf aContext[50] = {0};
