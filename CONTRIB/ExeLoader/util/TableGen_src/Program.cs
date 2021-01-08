using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;

namespace App
{
    class Program
    {
        public static string arg = "";
        public static int arg_size = 0;
        public static string[] aArg = null;


        static void Main(string[] args)
        {
            foreach(string _arg in args) {arg+=_arg +" ";arg_size++;}

            //Diect Testing
            arg = "header2gen/full_windows.h";arg_size++;

            aArg = arg.Split('-');
            if(arg_size == 0){
                Log.error("Please specify a file to convert");
                return;
            }
            if( aArg[0].Trim() == ""){
                var temp = new List<String>(aArg);temp.RemoveAt(0);
                aArg = temp.ToArray();
            }
            
            Log.debug("Arg: " + arg);
            Log.debug("Arg[1]: " + aArg[0]);
            
            string _sFile =  aArg[0];


            FuncParser _oFlagsParser = new FuncParser(new FileText("Flags/flags_clang++.h"));
            _oFlagsParser.parse("Flag.txt");

            FileText _oFile = new FileText(_sFile);
            FuncParser _oParser = new FuncParser(_oFile);

            _oParser.add2define(_oFlagsParser.aDefine);
            _oParser.parse("Out.txt");

//            Thread.Sleep(10000);

        }
    }
}
