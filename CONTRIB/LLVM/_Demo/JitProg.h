#include "Lib_GZ/GZ.h"


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

    typedef int (FuncPtrMain)(void*);
    typedef int (FuncPtrUpdate)(void);
    typedef void (FuncPtrVoid)(void);

class JitProg {
    public:

    LLVMExecutionEngineRef oEE;
    LLVMModuleRef oModule;
    LLVMMemoryBufferRef oBuff;

    gzBool bHaveUpdate;

    FuncPtrMain* dMain;
    FuncPtrUpdate* dUpdate;
    const char* sPath;
    gzUIntX nSize;

    JitProg( );

    bool fLoadFileMem(const char *_sContent,  size_t _nSize);
    bool fLoadFileDrive(const char *_sPath);

    bool fAddFunction(const char* _sName, void* _ptrFunc);
    bool fVerify();
    bool fParse();
    bool fPrint();
    int fLauch();
    int fUpdate();
    bool fLauchFuncV(const char* _sName);
};

















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
