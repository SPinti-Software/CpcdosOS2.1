using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace App {
	public class FileText {

        public  string sFile = "";

        public string[] aLine = new String[]{};

        public FileText(string _sFile){
            sFile = _sFile;
        }

		public void readFile() {
            if(File.Exists(sFile)) {
               aLine = File.ReadAllLines(sFile);
            }else {
                Log.error("Error: File not found: " + sFile);
            }
        }


	}
}
