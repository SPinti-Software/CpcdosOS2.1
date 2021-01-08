using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace App {
    class Macro_eval {
        Dictionary<string, Expression> aDefine;


        public Macro_eval(Dictionary<string, Expression> _aDefine ) {
            aDefine = _aDefine;
        }


        //#if 0
			//#if 1
			//#if __GNUC__
			//#if __MINGW_USE_UNDERSCORE_PREFIX == 0
			//#if (_CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY == 1)
			//#if defined(_X86_) && !defined(_M_IX86) && !defined(_M_IA64) && !defined(_M_AMD64) && !defined(__x86_64)
			//#if !defined (_CRT_SECURE_NO_WARNINGS) || (_CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES == 0)
			//#if defined(__cplusplus) && (MINGW_HAS_SECURE_API == 1)
			//#if defined __STDC_VERSION__ && __STDC_VERSION__ >= 199901L
			//#define __MINGW_GNUC_PREREQ(major, minor) (__GNUC__ > (major) || (__GNUC__ == (major) && __GNUC_MINOR__ >= (minor)))
			//#if !defined (_DLL) && defined (__GNUC__)
			//#if __MINGW_GNUC_PREREQ (3, 0)
			//#if _WIN32_WINNT >= 0x0600
            //#if defined(__GNUC__)
            //#if (_WIN32_WINNT >= 0x0400 ) || defined(_WIN32_DCOM)
            /*
                #define WINAPI_PARTITION_DESKTOP 0x1
				#define WINAPI_PARTITION_APP 0x2
				#define WINAPI_FAMILY_APP WINAPI_PARTITION_APP
				#define WINAPI_FAMILY_DESKTOP_APP (WINAPI_PARTITION_DESKTOP | WINAPI_PARTITION_APP)
				#ifndef WINAPI_FAMILY
					#define WINAPI_FAMILY WINAPI_FAMILY_DESKTOP_APP
					#endif
						#define WINAPI_FAMILY_PARTITION(v) ((WINAPI_FAMILY & v) == v)
             //#if WINAPI_FAMILY_PARTITION (WINAPI_PARTITION_APP)
            */

		
		
        public bool Brackets(Str _sLine ) {
			

            return false;
        }
		
		
		

        public bool eval(Str _sLine ) {
			Expression _oExp = new Expression(_sLine.str, _sLine);


          
            return false;
        }
    }
}
