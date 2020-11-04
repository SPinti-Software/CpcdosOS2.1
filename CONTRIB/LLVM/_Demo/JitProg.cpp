#include "JitProg.h"


using namespace std;
#define prtR(x) if(x) { cout << x << endl;  return false;}
#define prt(x) if(x) { cout << x << endl;  }


#define Func(_func) (void*)(&_func)



JitProg::JitProg():oEE(0),oModule(0),oBuff(0), dUpdate(0), bHaveUpdate(false){
};

bool JitProg::fLoadFileDrive(const char *_sPath){
    sPath = _sPath;
    nSize = 0;
    char* err = 0;
    LLVMCreateMemoryBufferWithContentsOfFile(_sPath, &oBuff, &err);   //read .ll
    if(err){
        prt(err);
        printf("  -> For: %s \n", _sPath);
        return false;
    }
    return true;
}

bool JitProg::fLoadFileMem(const char *_sContent,  size_t _nSize){
    nSize = _nSize;
    if(_nSize == 0){
        return false;
    }
    printf("\nLoadFileFormMem");
    char* err = 0;
    oBuff = LLVMCreateMemoryBufferWithMemoryRange(_sContent, _nSize, "FileMem", false);   //Temp "FileMem"
    prtR(err);
    return true;
}


bool JitProg::fParse(){
    if( oBuff){
        char* err = 0;
        //Parse & Create module
        LLVMParseIRInContext(LLVMGetGlobalContext(),oBuff,&oModule,&err); // ll_f doesnt need freeing
        prtR(err);
       // LLVMSetDataLayout(oModule, "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128" );
        LLVMSetDataLayout(oModule, "" ); //Use default one
        LLVMSetTarget(oModule,"i686-pc-mingw32-elf"); //Overite, we already know our target, to be portable the target was specified here
        prtR(err);
        //Create Execution Engine
        LLVMLinkInMCJIT();
        prtR(err);
        LLVMCreateMCJITCompilerForModule(&oEE,oModule,0,0,&err);
        prtR(err);
        return true;
    }
}


bool JitProg::fPrint(){
    if(oModule){
        LLVMDumpModule(oModule);
    }
}


bool JitProg::fAddFunction(const char* _sName, void* _ptrFunc){
    if(oModule){
        LLVMValueRef _oFunc = LLVMGetNamedFunction(oModule,_sName);
        if(_oFunc == 0){
            printf("\nWarning Function not found in JIT: %s \n", _sName);
            return false;
        }else{
            printf("\nFound: %s \n", _sName);
            LLVMAddGlobalMapping(oEE,_oFunc, _ptrFunc);
            return true;
        }
    }
}

bool JitProg::fVerify(){
    if(oModule){
      //  errs() << "\nverifying... ";
        char *error = NULL;
        LLVMVerifyModule(oModule, LLVMAbortProcessAction, &error);
        LLVMDisposeMessage(error);
    }
}


bool JitProg::fLauchFuncV(const char* _sName){
    if(oEE){
      //  using dDemo = int (int);

        FuncPtrVoid* f  = 0;
      //  dDemo* foo = &demo_ptr;
    //    printf("\n-----GET PTR ------- \n");
        auto fFind = LLVMGetNamedFunction(oModule,_sName);
        if(fFind){
            f = (FuncPtrVoid*)LLVMGetPointerToGlobal(oEE,fFind);
        }else{
            printf("\n- !Lauch func Not found  %s \n " , _sName);
            return false;
        }

        if(f == 0){
            printf("\n- Lauch func Not found  %s \n " , _sName);
            return false;
        }
         printf("\n- Lauch %s \n " , _sName);
         f();

       // printf("\n--------- Execute JIT: %s ---------- \n", _sName);
     //   int _nResult = f(0);
     ///   printf("\n--------- Result : %d     ---------- \n " , _nResult);
        return true;
    }
    return false;
}

int JitProg::fLauch(){
    if(oEE){
      //  using dDemo = int (int);
      //  typedef int  (tf_t)(void*);
       // using tf_t = int (void*);
      //  dDemo* foo = &demo_ptr;
        printf("\n-----GET PTR ------- \n");

       // tf_t* f = (tf_t*)LLVMGetPointerToGlobal(oEE,LLVMGetNamedFunction(oModule,"Jit_Main"));
        auto _jitfMain = LLVMGetNamedFunction(oModule,"Jit_Main");
        if(_jitfMain){
            dMain = (FuncPtrMain*)(LLVMGetPointerToGlobal(oEE,_jitfMain));
        }else{
            printf("\nError: Main Entry Function not found 'Jit_Main'\n");
            return false;
        }

        printf("\n----Loaded in mem -------");
        auto _jitfUpdate = LLVMGetNamedFunction(oModule,"Jit_Update");
        if(_jitfUpdate){
            bHaveUpdate = true;
            dUpdate = (FuncPtrUpdate*)LLVMGetPointerToGlobal(oEE,_jitfUpdate);
        }

        gzUIntX _nSizeKb = nSize / 1024;
        gzUIntX _nSizeD = (nSize - (_nSizeKb * 1024)) / 102;

        printf("\n");
        printf("\n ------------------------------------------------------------------------------");
        printf("\n ---- JIT Run:  %s  (%d.%dkb)", sPath, _nSizeKb, _nSizeD);
        printf("\n ------------------------------------------------------------------------------");
        printf("\n");
       // int _nResult = f(0);
        int _nResult = dMain(0);
        printf("\n");
        printf("\n ------------------------------------------------------------------------------");
        if(_jitfUpdate){
            printf("\n ---- Ini End:  %d" , _nResult);
        }else{
            printf("\n ---- JIT End:  %d" , _nResult);
        }
        printf("\n ------------------------------------------------------------------------------");
        printf("\n\n");
        return _nResult;
    }
    return false;
}


int JitProg::fUpdate(){
    if(oEE && dUpdate){
          //    printf("\n----- Updtate --- \n " );
        return  dUpdate();
    }
    return 0;
}

