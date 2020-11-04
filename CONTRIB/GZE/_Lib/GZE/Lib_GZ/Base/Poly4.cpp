//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Base/Poly4.h"

#include "Lib_GZ/Base/Pt.h"
#include "Lib_GZ/Math.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"


namespace Lib_GZ{namespace Base{namespace Poly4{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ Poly4
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"Poly4"}};
#endif
///////////////////////////////

}

GZ_mCppClass(Poly4)

cPoly4::cPoly4(Lib_GZ::cBase* _parent) : Lib_GZ::cClass(_parent){
	

}

void cPoly4::Ini_cPoly4(Lib_GZ::Base::cPt* _oPt1, Lib_GZ::Base::cPt* _oPt2, Lib_GZ::Base::cPt* _oPt3, Lib_GZ::Base::cPt* _oPt4){ gz_(0)
	oPt1 = gzSCastSelf<Lib_GZ::Base::cPt>(_oPt1);
	oPt2 = gzSCastSelf<Lib_GZ::Base::cPt>(_oPt2);
	oPt3 = gzSCastSelf<Lib_GZ::Base::cPt>(_oPt3);
	oPt4 = gzSCastSelf<Lib_GZ::Base::cPt>(_oPt4);
}

gzAny cPoly4::MemCopy(){
return (gzAny)new cPoly4(*this);
}
gzAny cPoly4::DeepCopy(){
return (gzAny)new cPoly4(*this, true);
}
cPoly4::~cPoly4(){
}



}}