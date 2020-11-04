#if !( defined tHDef_Lib_GZ_Sys_File || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Sys_File
namespace Lib_GZ{namespace Sys{class cFile;}}

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
#include "Lib_GZ/Class.h"
// ------  Cpp section  ------ //
#include "Lib_GZ/Lib.h"
// --------------------------- //

namespace Lib_GZ{namespace Sys{namespace File{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
#include "Lib_GZ/File/_Resource.h"
namespace Lib_GZ{namespace Sys{class cFile;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Sys{namespace File{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pFile {

	public:
	//Pure Function

};

class tApi_Lib_GZ cFile : public Lib_GZ::cClass {

	public:


		//Var
		cFile(Lib_GZ::cBase* _parent);
		virtual void Ini_cFile();

		inline cFile(const cFile &_o)  : Lib_GZ::cClass(_o){};
		inline cFile(const cFile &_o, gzBool _b)  : Lib_GZ::cClass(_o, _b){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cFile();

	private:

		//Var

};
class tApi_Lib_GZ csFile : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cFile> New(Lib_GZ::cBase* _parent){
			gzSp<cFile>_oTemp = gzSp<cFile>(new cFile(_parent));
			_oTemp->Ini_cFile();
			return _oTemp;
		}
		//Public static

		//Static function
		virtual gzInt fCreateDirectory(gzPStr _sFolder);
		virtual gzBool fIsFileExist(gzPStr _sFile);
		virtual void fLauch(gzPStr _sFile, gzPStr _sArguments);
		virtual gzStr fGetExePath();
		virtual gzStr fGetFullPath(gzPStr _sDrive, gzPStr _sPath);
		virtual gzBool fLoadFileFromVDrive(Lib_GZ::File::cResource* _oRc);
		virtual gzBool fLoadFile(Lib_GZ::File::cResource* _oRc, gzPStr _sFullPath);

		inline csFile(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csFile(){};
};
GZ_mStaticClass(File)
namespace File{
}}}
#endif