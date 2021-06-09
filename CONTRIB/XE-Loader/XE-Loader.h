#define _enum_  typedef struct {enum  
#define enum_ val;}_();

//!Sys/File.inc//
typedef struct File{
	char*  data;
	char*  path;
	size_t size;
}File;
File Xe_LoadFile(const char* _sFullPath);
//!-----------!//

typedef struct{
  enum key_t { Host, Cookie, Agent } key;
  char value[128];
} header_t;


//!Module//
#define _(_) XE_Type_##_
#define XE_Type_(_)(XE_Type_){XE_Type_##_}
_enum_{
	_(UNKNOW),
	_(EXE),
	_(ELF),
	_(DLL),
	_(SO),
}enum_
#undef _
#define _(_)XE_Arch_##_
#define XE_Arch_(_)(XE_Arch_){XE_Arch_##_}
_enum_{
	_(UNKNOW),
	_(X32),
	_(X64),
}enum_
#undef _

typedef struct XE_Module{
	File file;
	char* name;
	void* handle;
	void* section_text;
	int exe_ret;
	XE_Type_ type;
	XE_Arch_ arch;
}XE_Module;

extern "C" XE_Module* Xe_Load(const char* _sPath);
extern "C" int Xe_ExecuteMain(XE_Module* _module);
extern "C" int End(XE_Module* _mainModule);

extern "C" int cpc_xe_loader_main(const char* _sPath);
	
	
