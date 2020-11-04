#include "JitProg.h"

#include "int_lib.h"

#ifndef CpcDos
#include <windows.h>
#endif // CpcDos

#include <iostream>
#include <stdio.h>
#include <llvm-c/IRReader.h>

#include <llvm/IR/DerivedTypes.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/IRBuilder.h>

#include <llvm/ExecutionEngine/ExecutionEngine.h>
#include <llvm/ExecutionEngine/GenericValue.h>
#include <llvm/ExecutionEngine/MCJIT.h>
#include <llvm/Support/TargetSelect.h>
#include <llvm/IR/Module.h>

#include "llvm-c/Core.h"
#include "llvm/IR/Verifier.h"
#include <llvm-c/Analysis.h>



#include "Lib_GZ/GZ.h"





#ifdef CpcDos
#include "Lib_GZ/SysUtils/CpcDosHeader.h"
// #include "../../INCLUDE/cpcdos.h"


gzSp<CpcdosOSx_CPintiCore> oCpcd = gzSp<CpcdosOSx_CPintiCore>(new CpcdosOSx_CPintiCore);





gzUInt8* aFileData;
gzUIntX nFileSize;


gzBool fCpcDosLoadFile(const char* _sFullPath){

    printf("\nOk LoadFile: %s" , _sFullPath);
        nFileSize = 0;
        aFileData = 0;
        gzUInt _nExist = oCpcd->File_exist(_sFullPath);
        if(_nExist > 0){
            printf("\nFile Exist: %s" , _sFullPath);

           nFileSize =  oCpcd->File_size( _sFullPath);

           aFileData = new gzUInt8[nFileSize + 1];
            // Recuperer TOUT le contenu
            oCpcd->File_read_all(_sFullPath, (const char*)"RB", (char*)aFileData);
            aFileData[nFileSize] = 0;

        }else{
               printf("\nFile not found: %s" , _sFullPath);

            return false;
        }
    printf("\nLoaded: %s" , _sFullPath);

    return true;
}
#endif // CpcDos



























#define test_fileEmbed \
"; ModuleID = 'test.c'\n"\
"target triple = \"i686-pc-mingw32\"\n"\
\
"declare i32 @outsideFunc(i32)\n"\
\
"define i32 @Jit_Main() {\n"\
"entry:\n"\
  "%call = call i32 @outsideFunc(i32 156)\n"\
  "ret i32 %call\n"\
"}\n"


/*
#define test_fileEmbed \
"; ModuleID = 'test.c'\n"\
"target triple = \"i686-pc-mingw32\"\n"\
"define i32 @Jit_Main() {\n" \
"entry:\n" \
  "%nTest = alloca i32, align 4"\
  "store i32 77, i32* %nTest, align 4"\
  "%0 = load i32, i32* %nTest, align 4"\
  "ret i32 %0"\
"}\n"
*/













using namespace std;


void fMainDemoLLVM(const char* _sPath = "");

#define Func(_func) (void*)(&_func)







extern "C" bool fStartLLVM(const char* _sPath){
    fMainDemoLLVM(_sPath);
    return false;
}





#ifndef CpcDos
int main(int argc, char* argv[]) {
    fMainDemoLLVM(argv[1]); //argv[0] is path
    return false;
}
#endif


extern "C" int outsideFunc(int a){
    printf("\n - Function Called From C  -  Param: %d \n ", a );
  return a;
}
/*
typedef void* gzPtr;
typedef unsigned int gzUInt;
typedef   signed int gzInt;
//struct gzFuncStack{void* oClass; const char* cName; };
*/

extern "C" void DbgCrash(gzPtr* _pStackArray, gzUInt _nStackIndex){

    int _nIndex = _nStackIndex;
    printf("\n!!!Crashed!!!!!" );
    printf("\n\n --- Call Stack -----" );

  //  printf("\n on: %d", _nStackIndex );
    while(_nIndex > 0){
        gzFuncStack* _pStack = (gzFuncStack*)_pStackArray[_nIndex];
        printf("\n name: %s", _pStack->cName );
        _nIndex--;
    }

    printf("\n ------------------ ");
    printf("\n");
    throw 42;
}



void fMainDemoLLVM(const char* _sPath){

     printf("\nArg: %s\n", _sPath );
    if(_sPath == 0){
        _sPath = "";
    }

     printf("\n%s\n",_sPath );

    using namespace llvm;
    bool _bFile = true; //From file or from memory

    #ifdef CpcDos
    _bFile = false; //From memory in CpcDos
    #endif // CpcDos

//    _bFile = false; //Test


    LLVMInitializeAllTargets();
    LLVMInitializeAllTargetMCs();
    LLVMInitializeAllTargetInfos();
    LLVMInitializeAllAsmParsers();
    LLVMInitializeAllAsmPrinters();
    LLVMInitializeAllDisassemblers(); // just initialize them all....

    printf("\nJust to be sure the C fucntion was not optmize it out");
    outsideFunc(1);               // afraid of linker optmize it out
    printf("\n ------------ \n");


    JitProg oMainProg;

    if(_sPath[0] != 0 && _bFile){
        oMainProg.fLoadFileDrive(_sPath);
    }else{
         _bFile = false;
        #ifdef CpcDos
            fCpcDosLoadFile(_sPath);
            oMainProg.sPath = _sPath;
            oMainProg.fLoadFileMem((const char*)aFileData, nFileSize);
                printf("\n nFileSize :%d \n ", nFileSize);
        #else // CpcDos
            oMainProg.fLoadFileMem(test_fileEmbed, sizeof(test_fileEmbed) - 1);
        #endif

    }
    printf("\n Loaded \n ");

    oMainProg.fParse();
    printf("\n Parsed \n ");

    if(_sPath[0] == 0){ //Print demo in mem
        oMainProg.fPrint();
    }

    ///////// Base C function /////////
    oMainProg.fAddFunction("strcmp", Func(strcmp) ); //Other way to load it (Explicit symbol not work)
    ///////////////////////////////////

    oMainProg.fAddFunction("outsideFunc", Func(outsideFunc) );
    oMainProg.fAddFunction("DbgCrash", Func(DbgCrash) );

  //  oMainProg.fVerify();


//-DGZ_tOverplace=\"[Lib_GZ,Lib_GZ_Lite,Lib_GZ_OpenGL,Lib_Demo]\"

 //   if(_bFile){
        oMainProg.fLauchFuncV("IniLib_Lib_GZ");
        oMainProg.fLauchFuncV("IniLib_Lib_GZ_OpenGL");
        oMainProg.fLauchFuncV("IniLib_Lib_Demo");

        //////Temp lauch all possibility case////
        oMainProg.fLauchFuncV("IniLib_Lib_GZ_Lite");
        oMainProg.fLauchFuncV("IniLib_Lib_GZ_CpcDos");
        /////////////////////////////////////////////////
 //   }

    try {
        oMainProg.fLauch();
        if(oMainProg.bHaveUpdate){
            gzUInt _nResult = 1;
            while(_nResult){
                oMainProg.fUpdate();
                #ifndef CpcDos
                Sleep(1);
                #endif // CpcDos
            }
        }

    } catch (...) {
        std::cout << "catched exception" << std::endl;
    }


    #if CpcDos
    delete aFileData;
    #endif // CpcDos

    printf("**---- LLVM END -----**");
}














/*
class Foo
{
    void Bar();
    virtual void Baz();
};

class FooFoo : public Foo
{
    virtual void Baz();
};

Foo* foo = new FooFoo;

const void* barMethodPointer = getMethodPointer(&Foo::Bar);
const void* bazMethodPointer = getMethodPointer(foo, &Foo::Baz); // will get FooFoo::Baz

llvm::ExecutionEngine* engine = llvm::EngineBuilder(module).Create();

llvm::Function* bar = llvm::Function::Create( function type , Function::ExternalLinkage, "foo", module);
llvm::Function* baz = llvm::Function::Create( function type , Function::ExternalLinkage, "baz", module);
engine->addGlobalMapping(bar, const_cast<void*>(barMethodPointer)); // LLVM always takes non-const pointers
engine->addGlobalMapping(baz, const_cast<void*>(bazMethodPointer));
*/
/*
//LLVMRunFunctionAsMain
 LLVMValueRef nTestValue = LLVMConstInt(LLVMInt32Type(), i, 0);
LLVMRunFunctionAsMain(ee, )


    llvm::ExecutionEngine *engine =
    llvm::EngineBuilder( m->get()).create();

    if(engine != 0){
        engine->finalizeObject(); // memory for generated code marked executable:
                              // http://lists.cs.uiuc.edu/pipermail/llvmdev/2013-June/062677.html
        engine->runFunction(main_func, std::vector<llvm::GenericValue>());
    }else{
        std::cerr << "Engine null\n";
    }
*/
/*
	//ExistingModuleProvider* MP = new ExistingModuleProvider(m);
	//ExecutionEngine* EE = ExecutionEngine::create(MP, false);
ExecutionEngine* EE(ee);
    std::vector<GenericValue> noargs;
	GenericValue gv = ee->runFunction(f, noargs);

	std::cout << "Result: " << gv.IntVal.toStringUnsigned(10) << "\n";

*/
