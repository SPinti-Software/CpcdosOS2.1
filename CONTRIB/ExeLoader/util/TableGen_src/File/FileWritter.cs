using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace App {
	public class FileWritter{

        public  string sFile = "";

        public FileWritter(string _sFile){
            sFile = _sFile;
        }

		public void writeFile(List<string> _aList) {
            /*
			string _sData = "";
			foreach(string _sLine in _aList ) {
				_sData += _sLine + '\n';
			}
			//Create directory structure?
			File.WriteAllText(sFile, _sData);
            */
            File.WriteAllLines(sFile, _aList.ToArray());
        }


	}
}
