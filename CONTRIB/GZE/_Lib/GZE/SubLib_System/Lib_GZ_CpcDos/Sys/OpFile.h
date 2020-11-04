#if !( defined tHDef_Lib_GZ_CpcDos_Sys_OpFile || defined  tHDef_IN_Lib_GZ_Sys_File || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_CpcDos_Sys_OpFile
namespace Lib_GZ_CpcDos{namespace Sys{class cOpFile;}}

#include "Lib_GZ_CpcDos/Lib_GZ_CpcDos.h"
#include "Lib_GZ/GZ.h"
#include "Lib_GZ/Thread.h"
#include "Lib_GZ/Sys/File.h"
namespace Lib_GZ_CpcDos{namespace Sys{namespace OpFile{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}
namespace Lib_GZ{namespace Sys{class cFile;}}
#include "Lib_GZ/File/_Resource.h"
namespace Lib_GZ_CpcDos{namespace Sys{class cOpContextHandle;}}

namespace Lib_GZ_CpcDos{namespace Sys{namespace OpFile{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ_CpcDos pOpFile {

	public:
	//Pure Function

};

class tApi_Lib_GZ_CpcDos cOpFile : public Lib_GZ::Sys::cFile {

	public:


		//Var
		cOpFile(Lib_GZ::cBase* _parent);
		virtual void Ini_cOpFile();

		inline cOpFile(const cOpFile &_o)  : Lib_GZ::Sys::cFile(_o){};
		inline cOpFile(const cOpFile &_o, gzBool _b)  : Lib_GZ::Sys::cFile(_o, _b){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cOpFile();

	private:

		//Var

};
class tApi_Lib_GZ_CpcDos csOpFile : public Lib_GZ::Sys::csFile  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<Lib_GZ::Sys::cFile> New(Lib_GZ::cBase* _parent){
			gzSp<cOpFile>_oTemp = gzSp<cOpFile>(new cOpFile(_parent));
			_oTemp->Ini_cOpFile();
			return _oTemp;
		}
		//Public static

		//Static function
		virtual gzStr fGetExePath();
		virtual gzBool fLoadFile(Lib_GZ::File::cResource* _oRc, gzPStr _sFullPath);

		inline csOpFile(Lib_GZ::cBase* _parent): Lib_GZ::Sys::csFile(_parent){};
		inline ~csOpFile(){};
};
GZ_mStaticClassOp(OpFile, Lib_GZ::Sys::File);
namespace OpFile{
}}}
#endif