using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace App {
	public class Expression {

		string sTag;
		Str str;

		public Expression(string _sTag, Str _str) {
			sTag = _sTag;
            str = _str;
			Tokenise();
        }

		public void Tokenise() {
			Str _str;
			do {
				_str = new Str(str.next_word(str.lastidx));
				_str.str += "";

			}while ( _str.str != "" );

        }




	}
}
