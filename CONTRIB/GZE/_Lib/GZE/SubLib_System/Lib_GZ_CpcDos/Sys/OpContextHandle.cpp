#include "Lib_GZ_CpcDos/Sys/OpContextHandle.h"

#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"
#include "Lib_GZ/Sys/System.h"
#include "Lib_GZ/Sys/Message/ContextLink.h"
#include "Lib_GZ_CpcDos/Sys/OpContext.h"
#include "Lib_GZ/Sys/ContextHandle.h"
#include "Lib_GZ/Gpu/Gpu.h"


namespace Lib_GZ_CpcDos{namespace Sys{namespace OpContextHandle{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ OpContextHandle
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"OpContextHandle"},{0,"fCreateContextHandle"},{0,"fIniPixelDrawZone"},{0,"fBlit"}};
#endif
///////////////////////////////

}

GZ_mCppClass(OpContextHandle)

cOpContextHandle::cOpContextHandle(Lib_GZ::cBase* _parent) : Lib_GZ::Sys::cContextHandle(_parent){
	nIdContextGZE=0;

}

void cOpContextHandle::Ini_cOpContextHandle(Lib_GZ::Sys::Message::cContextLink* _oLink){ gz_(0)
	Ini_cContextHandle((Lib_GZ::Sys::Message::cContextLink*)(_oLink));
}

gzBool cOpContextHandle::fCreateContextHandle(){ gz_(1)
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("Please Insert CreateContextHandle code here"));
	//Tag cpp
	// On creer le contexte pour Cpcdos en renvoyant la taille X, Y et le pointeur vers le tableau de pixels 1D
	int Size_X = 800;
	int Size_Y = 600;
	nIdContextGZE = oCpcdos->Create_Context(Size_X, Size_Y);
	return false;
}

gzInt32* cOpContextHandle::fIniPixelDrawZone(){ gz_(2)
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("Please Insert IniPixelDrawZone code here"));
	//Tag cpp
	// Retourner le pointeur du contexte depuis Cpcdos
	return (gzInt32*) oCpcdos->Init_Get_Context_PTR(nIdContextGZE);
	return zNull;
}

gzUIntX cOpContextHandle::fBlit(){ gz_(3)
	//Tag cpp
	// Blitter a l'affichage
	oCpcdos->Blitting(nIdContextGZE);
	return 0;
}

gzAny cOpContextHandle::MemCopy(){
return (gzAny)new cOpContextHandle(*this);
}
gzAny cOpContextHandle::DeepCopy(){
return (gzAny)new cOpContextHandle(*this, true);
}
cOpContextHandle::~cOpContextHandle(){
}



}}