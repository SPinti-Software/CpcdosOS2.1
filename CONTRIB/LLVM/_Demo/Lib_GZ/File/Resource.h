#if !( defined tHDef_Lib_GZ_File_Resource || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_File_Resource
#define tHDef_IN_Lib_GZ_File_Resource
namespace Lib_GZ{namespace File{class cResource;}}

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
#include "_Resource.h"
#include "Lib_GZ/Class.h"
namespace Lib_GZ{namespace File{namespace Resource{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
namespace Lib_GZ{namespace Sys{class cFile;}}
#include "Lib_GZ/File/_Resource.h"
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace File{namespace Resource{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pResource {

	public:
	//Pure Function

};

class tApi_Lib_GZ cResource : public Lib_GZ::cClass {

	public:

		// ------  Cpp section  ------ //
		cResource* fSet(const gzRcFolder* _oFolder, gzStr _sFile, const gzUInt8* _aSrcMemData, gzUInt _nSize){
		aSrcMemData = (gzUInt8*)_aSrcMemData;
		sFile = _sFile;
		nSize = _nSize;
		hLocation = Lib_GZ::File::Resource::eLocation::Memory;
		return this;
		}
		// --------------------------- //


		//Var
		gzStr sFile;
		gzUInt8* aSrcMemData;
		gzStr sPath;
		gzStr sVDrive;
		gzBool bReadOnly;
		gzBool bRcLoaded;
		gzBool bGpuLoaded;
		Lib_GZ::File::Resource::eLocation hLocation;
		gzUInt nSize;
		cResource(Lib_GZ::cBase* _parent);
		virtual void Ini_cResource(gzPStr _sPath, Lib_GZ::File::Resource::eLocation _hLocation = Lib_GZ::File::Resource::eLocation::Unknow);
		virtual void fLoadFile();
		virtual void fSetDynamicMemData(gzUInt8* _aSrcMemData, gzUIntX _nSize);
		virtual void fSetStaticMemData(gzUInt8* _aSrcMemData, gzUIntX _nSize);

		inline cResource(const cResource &_o)  : Lib_GZ::cClass(_o), sFile(_o.sFile), aSrcMemData(), sPath(_o.sPath), sVDrive(_o.sVDrive), bReadOnly(_o.bReadOnly), bRcLoaded(_o.bRcLoaded), bGpuLoaded(_o.bGpuLoaded), hLocation(), nSize(_o.nSize){};
		inline cResource(const cResource &_o, gzBool _b)  : Lib_GZ::cClass(_o, _b), sFile(_o.sFile,_b), aSrcMemData(), sPath(_o.sPath,_b), sVDrive(_o.sVDrive,_b), bReadOnly(_o.bReadOnly), bRcLoaded(_o.bRcLoaded), bGpuLoaded(_o.bGpuLoaded), hLocation(), nSize(_o.nSize){};
		virtual ~cResource();

	private:

		//Var

};
class tApi_Lib_GZ csResource : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cResource> New(Lib_GZ::cBase* _parent, gzPStr _sPath, Lib_GZ::File::Resource::eLocation _hLocation = Lib_GZ::File::Resource::eLocation::Unknow){
			gzSp<cResource>_oTemp = gzSp<cResource>(new cResource(_parent));
			_oTemp->Ini_cResource(_sPath, _hLocation);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csResource(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csResource(){};
};
GZ_mStaticClass(Resource)
namespace Resource{
}}}
#undef tHDef_IN_Lib_GZ_File_Resource
#endif