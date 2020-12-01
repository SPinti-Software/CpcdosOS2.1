#if !( defined tHDef_Lib_GZ_File_RcImg || defined  tHDef_IN_Lib_GZ_File_Resource || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_File_RcImg
namespace Lib_GZ{namespace File{class cRcImg;}}

//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Lib_GZ.h"
#include "Lib_GZ/GZ.h"
#include "Lib_GZ/Thread.h"
#include "Lib_GZ/File/Resource.h"
namespace Lib_GZ{namespace File{namespace RcImg{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
namespace Lib_GZ{namespace Wrap{class cImage;}}
namespace Lib_GZ{namespace Sys{class cSystem;}}
#include "Lib_GZ/File/_Resource.h"
namespace Lib_GZ{namespace Gpu{namespace GpuObj{class cGpuObject;}}}
namespace Lib_GZ{namespace File{class cRcImg;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace File{namespace RcImg{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pRcImg {

	public:
	//Pure Function

};

class tApi_Lib_GZ cRcImg : public Lib_GZ::File::cResource {

	public:

		// ------  Cpp section  ------ //
		cRcImg(gzBool _bStartRc = false):cResource(0) {
		//Image.fTestShape();
		//	aImg = 0; //Todo always
		printf("\n RcImg");
		//Debug.fConsole("RcImg");
		}
		// --------------------------- //


		//Var
		gzUInt32 nGpuTexId;
		gzUInt nWidth;
		gzUInt nHeight;
		gzInt32** aImg;
		cRcImg(Lib_GZ::cBase* _parent);
		virtual void Ini_cRcImg(gzPStr _sPath);
		virtual gzBool fCpuLoad();
		virtual gzBool fGpuLoad();

		inline cRcImg(const cRcImg &_o)  : Lib_GZ::File::cResource(_o), nGpuTexId(_o.nGpuTexId), nWidth(_o.nWidth), nHeight(_o.nHeight), aImg(){};
		inline cRcImg(const cRcImg &_o, gzBool _b)  : Lib_GZ::File::cResource(_o, _b), nGpuTexId(_o.nGpuTexId), nWidth(_o.nWidth), nHeight(_o.nHeight), aImg(){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cRcImg();

	private:

		//Var

};
class tApi_Lib_GZ csRcImg : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cRcImg> New(Lib_GZ::cBase* _parent, gzPStr _sPath){
			gzSp<cRcImg>_oTemp = gzSp<cRcImg>(new cRcImg(_parent));
			_oTemp->Ini_cRcImg(_sPath);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csRcImg(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csRcImg(){};
};
GZ_mStaticClass(RcImg)
namespace RcImg{
}}}
#endif