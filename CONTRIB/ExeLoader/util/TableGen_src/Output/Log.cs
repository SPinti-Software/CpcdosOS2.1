using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;

namespace App {
    class Log {

        [DllImport("msvcrt40.dll")]
        public static extern int printf(string format, __arglist);


        public static readonly Object oLockOutPut = new Object();
        public static readonly Object oLockError = new Object();

    	public static void  debug(string _sTxt) {
			#if DEBUG
            try { 
			Console.WriteLine(_sTxt);
            }catch(Exception e) { };
			#endif
		}

        /*
       	public static void  fAppOut(string _sTxt) {
			Debug.fPrint( _sTxt);
		} */
        	
        public static void error(string _sMsg, int _nColorCode = 0) {
            print(_sMsg);
        }

        public static void print(string _sMsg) {
            Console.WriteLine(_sMsg);
            //printf()
        }


        public static void fWPrint(string _sMsg) {
            Console.Write(_sMsg);
        }

        public static void fRPrint(string _sMsg) {
            Console.Write("\r" + _sMsg);
        }

    }
}
