#region header
// ========================================================================
// Copyright (c) 2018 - Julien Caillon (julien.caillon@gmail.com)
// This file (SubString.cs) is part of YamuiFramework.
// 
// YamuiFramework is a free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// YamuiFramework is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details.
// 
// You should have received a copy of the GNU General Public License
// along with YamuiFramework. If not, see <http://www.gnu.org/licenses/>.
// ========================================================================
#endregion
using System;

namespace App
{
    public class Str {

        public string str;
        public int size;
        public int lastidx = 0;

        public Str(string _str) {
            str = _str;
            size = _str.Length;
        }


        public static int skipspace(string _sLine, int idx) {
             for(; idx < _sLine.Length; idx++) {if(_sLine[idx] > 32) {break;}}  //32 = ascii table space ' '
             return idx;
        }

        public string substr(int _startIdx, int _endIdx) {
           return str.Substring(_startIdx, _endIdx-_startIdx);
        }
		 public string substr(int _startIdx) {
           return str.Substring(_startIdx);
        }

		

		public bool is_alphanum(char _char) {
			if((_char >= '0' && _char <= '9') 
			|| (_char >= 'a' && _char <= 'z') 	
			|| (_char >= 'A' && _char <= 'Z') 
			|| (_char == '_')) {
				return true;
			}else {
				return false;
			}
		}
		public bool is_op(char _char) {
			if((_char > ' ' && !is_alphanum(_char) && _char < 127)) {
				return true;
			}else {
				return false;
			}
		}

		public bool is_delimiter(char _char) {
			if(!is_alphanum(_char) &&  !is_op(_char) ) {
				return true;
			}else {
				return false;
			}
		}

		/*
		 public int next_start_word(int _startIdx) {
            bool _bFoundDelemiter =  false;
			if(_startIdx == 0) {_bFoundDelemiter = true;}
            while(_startIdx < str.Length) {
                if(!is_alphanum( str[_startIdx] )) {
                    _bFoundDelemiter = true;
                }
                if(_bFoundDelemiter && is_alphanum( str[_startIdx])) {
                    break;
                }
                _startIdx++;
            }
            return _startIdx; //str.Length if not found
        }

        public int next_end_word(int _startIdx) {
            bool _bFoundWord =  false;
            while(_startIdx < str.Length) {
                char _char = str[_startIdx] ;
                if( is_alphanum( _char) ) {
                    _bFoundWord = true;
                }
                if(_bFoundWord && !is_alphanum( _char) ) {
                    break;
                }
                _startIdx++;
            }
            return _startIdx; //str.Length if not found
        }
		*/



        public int next_start_word(int _startIdx) {
            bool _bFoundDelemiter =  false;
			if(_startIdx == 0) {_bFoundDelemiter = true;}
            while(_startIdx < str.Length) {
                if(is_delimiter( str[_startIdx] )) {
                    _bFoundDelemiter = true;
                }
                if(_bFoundDelemiter && (is_alphanum( str[_startIdx])  || is_op( str[_startIdx]))) {
                    break;
                }
                _startIdx++;
            }
            return _startIdx; //str.Length if not found
        }

        public int next_end_word(int _startIdx) {
            bool _bFoundWord =  false;
            bool _bFoundOp =  false;
            while(_startIdx < str.Length) {
                char _char = str[_startIdx] ;
                if( is_alphanum( _char) ) {
                    _bFoundWord = true;
                }
				if( is_op( _char) ) {
                    _bFoundOp = true;
                }
                if(_bFoundWord && !is_alphanum( _char) ) {
                    break;
                }
				if(_bFoundOp && !is_op( _char) ) {
                    break;
                }

                _startIdx++;
            }
            return _startIdx; //str.Length if not found
        }

		public string next_word(int _startIdx = 0) {
			int _start = next_start_word(_startIdx);
			lastidx = next_end_word(_start);
			return substr(_start, lastidx);
		}


        public bool Cmp(string _cmp, int _startIdx = 0) {
            if(size-_startIdx < _cmp.Length) {return false;}
            for(int i=0; i< _cmp.Length; i++) {
                if( str[_startIdx+i] !=_cmp[i]) {return false;}
            }
           return true;
        }

        
        public char this[int idx] {
            get {
                if (idx < 0 || idx > size){
                    return (char)0;
                }
                return str[idx];
            }
        }

        public bool IsEmpty() {
            return size < 1;
        }

        public bool IsEmptyOrWhitespace() {
            for (int i = 0; i < size; i++) {
                if (!char.IsWhiteSpace(str,  i))
                    return false;
            }
            return true;
        }

  
    }
}