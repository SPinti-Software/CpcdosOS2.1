#include "Lib_Demo/MainEntry.h"

#include "Lib_Demo/MainInterface.h"
#include "Lib_GZ/ThreadExt.h"
#include "Lib_GZ/Sys/File.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"


namespace Lib_Demo{namespace MainEntry{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ MainEntry
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"MainEntry"},{0,"fTestArray"},{0,"fTestDelegate"},{0,"fQueueDelegate"}};
#endif
///////////////////////////////

}

GZ_mCppClass(MainEntry)

cMainEntry::cMainEntry(Lib_GZ::cBase* _parent) : Lib_GZ::cClass(_parent)
//Delegate ini
,dComapre(this, &Lib_Demo::cMainEntry::wQueueDelegate)

{ gz_(0)
	

}

void cMainEntry::Ini_cMainEntry(){ gz_(0)
	//Print GZE version to debug, full unicode support, muliples string convertion & combinaison are possible
	Lib_GZ::Sys::Debug::Get(thread)->fTrace2(gzStrL(" ***-------- Demo : ") + gzStrL("GroundZero Engine v") + gzStrF(0.005) + gzStrL(" --------***"));
	gzInt _nLocalVar = 4;
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL(" - Test QueueArray / Delegates -"));
	qaShort.fPush(70);
	qaShort.fPush(50);
	qaShort.fPush(99);
	qaShort.fPush(2);
	qaShort.fPush(17);
	qaShort.fPush(13);
	gzFOR_EACH_QArrayNew(qaShort, _qe_nVal, gzInt){
		gzInt _nVal = _qe_nVal.ref();
		Lib_GZ::Sys::Debug::Get(thread)->fTrace3(gzStrL("Val : ") + gzStrI(_nVal));
	gzEND_QArray(_qe_nVal)}
	qaShort.fShort(dComapre.get());
	gzFOR_EACH_QArrayNew(qaShort, _qe_nVal, gzInt){
		gzInt _nVal = _qe_nVal.ref();
		Lib_GZ::Sys::Debug::Get(thread)->fTrace3(gzStrL("SortVal : ") + gzStrI(_nVal));
	gzEND_QArray(_qe_nVal)}
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("4444----------- "));
	//Create a new Windows with GZE demos
	oThread = gzSCast<Lib_GZ::cThreadExt>((Lib_Demo::MainInterface::NewThread(this)));
}

void cMainEntry::fTestArray(gzArray<gzInt> _aTest){ gz_(1)
	_aTest[gzUInt(6)] = 666;
}

gzInt cMainEntry::fTestDelegate(gzFloat _nF1, gzFloat _nF2){ gz_(2)
	Lib_GZ::Sys::Debug::Get(thread)->fTrace2(gzStrL("fTestDelegate"));
	return 33;
}

gzBool cMainEntry::fQueueDelegate(gzQElement<gzInt> _qT1, gzQElement<gzInt> _qT2){ gz_(3)
	if (gzInt(_qT1.ref()) < gzInt(_qT2.ref())){
		return true;
	}else{
		return false;
	}
	return false;
}

gzAny cMainEntry::MemCopy(){
return (gzAny)new cMainEntry(*this);
}
gzAny cMainEntry::DeepCopy(){
return (gzAny)new cMainEntry(*this, true);
}
cMainEntry::~cMainEntry(){
}



}