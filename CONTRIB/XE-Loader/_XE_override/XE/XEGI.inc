
/************** F R O M  C P C D O S   W R A P P E R **************/

// ---- Buffer / context from Cpcdos ---- //
extern long					cpc_Creer_Contexte			(long TAILLEX, long TAILLEYn);
extern void*				cpc_Obtenir_Zone_Contexte	(long ID);
extern long					cpc_Blitter					(long ID);

// ---- User input from cpcdos ---- //
extern long					cpc_mouse_state_lck			(long param, long id_context); /* 0:Clic state (1:left 2:right 3:middle) | 1:Position X | 2:Position Y | 3:Scrool wheel */
extern long					cpc_set_mouse_lck			(long px, long py, bool visible, long id_context);
extern long					cpc_get_key_lck				(long id_context);




/************** F R O M   C P I N T I   C O R E   W R A P P E R **************/

// ---- Create thread ---- //
extern unsigned long 		xe_cpinti_creer_thread		(void* (* Fonction) (void * arg), unsigned long stackSize, void* threadParam, bool ExecuteThreadNow);

// ---- Doevent (Calling CPinti Core scheduler) ---- //
extern void 				xe_cpinti_doevents			(unsigned long time_ms);

// ---- Getting threads info ---- //
extern unsigned long 		xe_cpinti_get_ThreadEnCours	();

// ---- Getting process infos ---- //
extern unsigned long 		xe_cpinti_get_pid_from_tid	();
// extern unsigned long 		xe_cpinti_get_pid_from_tid	(unsigned long time_ms);


// ---- Critical section  ---- //
extern void 				xe_cpinti_ENTRER_SectionCritique();
extern void 				xe_cpinti_SORTIR_SectionCritique();


/**********************************************************************/



int UserInputUpdate(uint32_t h, long id_context);

uint32_t Create_context(ContextInf _ctx)
{
	aContext_count++; //Important: Skip the zero index (NULL)
	int idx = aContext_count;
	
	aContext[idx] = _ctx;
	
	
	if(aContext[idx].width > 10)
	{
		// Get ID context from cpcdos
		aContext[idx].id_context = cpc_Creer_Contexte((long) aContext[idx].width, (long)aContext[idx].height);
		showinf("Create_Context()= idx: %d, id.context: %zu, height: %d, width: %d", idx,  aContext[idx].id_context, aContext[idx].height,  aContext[idx].width);
	}

	showinf("PixView= idx: %d,  height: %d, width: %d", idx, aContext[idx].height,  aContext[idx].width);
	showinf("create hwnd_View( hwnd_View: %d, idx: %d, height: %d, width: %d )", aContext[idx].hwnd_View,  idx,  aContext[idx].height,  aContext[idx].width );
	return (uint32_t)idx;
}

ContextInf* Blit_context(uint32_t _idx, const void* _pixels, int _SrcWidth)
{
	// Updating mouse state. id_context for identifing window handle for SCI cpcdos service
	UserInputUpdate(_idx, (long) aContext[1].id_context);

	// If witdh > 10 px
	if(aContext[_idx].width > 10)
	{

		// Getting pixels context
		aContext[_idx].pixels = cpc_Obtenir_Zone_Contexte((long) aContext[1].id_context);

		// Getting ptr source & destination
		uint32_t* pix_src = (uint32_t*)_pixels;
		uint32_t* pix_dest = (uint32_t*)aContext[_idx].pixels;
		
		// Write to ptr video buffer
		for(int y = 0; y <  aContext[_idx].height; y++){
			memcpy(pix_dest + (y * aContext[_idx].width), pix_src + (y * _SrcWidth), aContext[_idx].width *4);
		}

		_printl("hndl:%zu - Blit_context(%l) [%dx%d]", aContext[1].id_context, aContext[_idx].height, aContext[_idx].width);

		// Blit fram buffer to cpcdos SCI
		cpc_Blitter((long) aContext[_idx].id_context);

	}	

	return &aContext[_idx]; //number of scan lines copied
}

int UserInputUpdate(uint32_t h, long id_context)
{
	// cpc_mouse_state_lck() --> 0:Clic state (1:left 2:right 3:middle) | 1:Position X | 2:Position Y | 3:Scrool wheel

	// Getting clic state
	long clic = (long) cpc_mouse_state_lck(0, id_context);

	// Getting mouse position (relative to window with id)
	long posx = (long) cpc_mouse_state_lck(1, id_context);
	long posy = (long) cpc_mouse_state_lck(2, id_context);

	// ---- EVENTS ----

	// If user press clic
	if(clic > 0)
		aSysMsg(add,(XEGI_SysMsg){.handle=h, .type=XEGI_Msg_(LBUTTONDOWN)});
	
	// If user left clic
	if(clic == 0)
		aSysMsg(add,(XEGI_SysMsg){.handle=h, .type=XEGI_Msg_(LBUTTONUP)});
	
	// When user mouse move
	aSysMsg(add,(XEGI_SysMsg){.handle=h, .type=XEGI_Msg_(MOUSEMOVE), .x=posx, .y=posy });

	_printl("hndl:%zu - UserInputUpdate(%l) - Mouse state [clic:%ld] [%ldx%ld] ", h, id_context, clic, posx, posy);
}


uint32_t Sys_ProcessMsg(XEGI_SysMsg _msg)
{
	return 0;
}


uint32_t Sys_CreateThread(void* (* threadMain) (void * arg), unsigned long stackSize, void* threadParam)
{
	xe_cpinti_ENTRER_SectionCritique();
	_printl("[CPCDOS] Using CPinti Core threads");
	unsigned long result = xe_cpinti_creer_thread((void* (*) (void *)) threadMain, stackSize, (void*) threadParam, false);
	_printl("[CPCDOS] Results TID CPinti Core thread : %lu", result);
	xe_cpinti_SORTIR_SectionCritique();

	return result;
}

void Sys_Sleep(int32_t time_ms)
{
	xe_cpinti_doevents(time_ms);
}

void Sys_EnterCriticalSection()
{
	// Entrer dans une section critique
	xe_cpinti_ENTRER_SectionCritique();
}

void Sys_TryEnterCriticalSection()
{
	// Entrer dans une section critique
	xe_cpinti_ENTRER_SectionCritique();
}

void Sys_LeaveCriticalSection()
{
	// Sortir d'une section critique
	xe_cpinti_SORTIR_SectionCritique();
}

void* Sys_GetCurrentThread()
{
	// Obtenir le thread courant
	return (void*) xe_cpinti_get_ThreadEnCours();
}

double Sys_GetCurrentThreadId()
{
	// Obtenir le thread courant
	return (double)  xe_cpinti_get_ThreadEnCours();
}

double Sys_GetCurrentProcessId()
{
	// Obtenir le thread courant
	return (double)  xe_cpinti_get_pid_from_tid();
}





//-------- OVERRIDED --------//

uintptr_t XeGI_CreateThread(XEGI_THREAD_START_ROUTINE threadMain, uint32_t stackSize, void* threadParam)
{
	uintptr_t thdl =0;

	if ((thdl = (uintptr_t)Sys_CreateThread((void* (*) (void *))threadMain, stackSize,(LPVOID)threadParam))){
		return thdl;
	}
	_printl("Error, no thread created");
}

void XeGI_Sleep(int32_t _ms)
{
	Sys_Sleep(_ms);
}


//-------- OVERRIDED --------//