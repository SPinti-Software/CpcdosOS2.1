#ifndef EXELOADER_Debug
#define EXELOADER_Debug


int exe_err = 0;
#include<setjmp.h> 
jmp_buf jumpsignal; 
#define Use_LongJump

//GDB will automaticly break here (with Cwc compiler)
extern "C" void GDB_Func_Break(){} //raise(SIGTRAP)? void __debugbreak();?
extern "C" void GDB_Func_ExecuteCmds(){} 


inline void signalHandler(int signum) {
	printf("\n Interrupt signal received: ");
	// cleanup and close up stuff here
	switch (signum) {
	case SIGTERM:
		printf("SIGTERM, termination request, sent to the program ");
		break;
	case SIGSEGV:
		printf("SIGSEGV, invalid memory access (segmentation fault) ");
		break;
	case SIGINT:
		printf("SIGINT, external interrupt, usually initiated by the user ");
		break;
	case SIGILL:
		printf("SIGILL, invalid program image, such as invalid instruction ");
		break;
	case SIGABRT:
		printf("SIGABRT, abnormal termination condition, as is e.g. initiated by std::abort()");
		break;
	case SIGFPE:
		printf("SIGFPE, erroneous arithmetic operation such as divide by zero");
		break;
	default:
		printf("UNKNOW");
		break;
	}
	exe_err = signum;
	longjmp(jumpsignal, 1);
	//exit(signum);
}

inline void registerSignal() {
	/* //No sigaction on Windows !?
	int *foo = NULL;
		struct sigaction sa;
		memset(&sa, 0, sizeof(struct sigaction));
		sigemptyset(&sa.sa_mask);
		sa.sa_sigaction = segfault_sigaction;
		sa.sa_flags   = SA_SIGINFO;
		sigaction(SIGSEGV, NULL, NULL);
	*/
	for (int i = 1; i < 32; i++) {
		signal(i, signalHandler);
	}
}



#endif
