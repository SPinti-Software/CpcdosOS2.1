using App;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


namespace App
{
    public class FuncParser
    {
        FileText oFile;
        Macro_eval oEval;


        public Dictionary<string, Expression> aDefine = new Dictionary<string, Expression>();

        public List<string> aProtoList = new List<string>();

		public  List<string> aCppLine = new List<string>();
		public  List<string> aCppLine_Opt = new List<string>();
		public  List<string> aCppLine_GlobalScope = new List<string>();

      	public  QList<int>      aScopeLine_stack_line = new QList<int>();
      	public  QList<string>   aScopeLine_stack_type = new QList<string>();


        public void add2define(Dictionary<string, Expression> _aAdd) {
            _aAdd.ToList().ForEach(x => aDefine.Add(x.Key, x.Value));
        }

        public void define_add(string _key, Expression _val = null) {
            if(!aDefine.ContainsKey(_key)) {
                aDefine.Add(_key, _val);
            }else{
                aDefine[_key] = _val;
            }
        }
        //parsing
        Str sLine_Prec;


        public FuncParser(FileText _oFile){
            oFile = _oFile;
        }

        public void parse(string _sOut = "") {
            oEval = new Macro_eval(aDefine);

            parse_normalize(aCppLine);
            parse_optimize(aCppLine, aCppLine_Opt);
           // parse_gblscope();
           if(_sOut != "") {
                FileWritter _oFileResult = new FileWritter(_sOut);
		    //	_oFileResult.writeFile(aCppLine);
			    _oFileResult.writeFile(aCppLine_Opt);
                    //_oFileResult.writeFile(aCppLine_GlobalScope);
            }
            
            Log.debug("!!FINISH!!");
        }

       
        public static void saveLine(List<string> _aTo, string _sLine) {
            string _sCleaned = _sLine.Trim();
            if(_sCleaned != "") {
                 _aTo.Add(_sLine.Trim());
            }
        }


        //First pass remove comment & remove line break, split with ;
        public void parse_normalize(List<string> _aDest) {
			bool _bInsideMultilineComment = false;
			bool _bInsideStringLiteral = false;
			bool _bSingleLineMode = false;
			string _sExtLine = "";

            oFile.readFile();

			//First pass remove comment & remove line break, split with ;
            foreach(string _sLine in oFile.aLine){
				
				char lastChar = ' ';

				//Trim start
				int idx = 0;
                idx=Str.skipspace(_sLine, idx);
			    
				//Directive are on sigle line
				if(idx < _sLine.Length && _sLine[idx] == '#' && !_bInsideMultilineComment) {idx++;
					if(_sExtLine != "" && _sExtLine != " ") {saveLine(aCppLine, _sExtLine);_sExtLine=""; //saveline
					}_sExtLine+='#';
                    idx=Str.skipspace(_sLine, idx);
					_bSingleLineMode = true;
				}

				//Find comments
                char currChar = ' ';
				for(; idx < _sLine.Length; idx++) {
                    lastChar=currChar;
                    currChar = _sLine[idx];

					if(!_bInsideMultilineComment && !_bInsideStringLiteral) {
                        if(currChar <= 32) {  //32 = ascii table space ' '
                            //Normalise space
                            idx=Str.skipspace(_sLine, idx)-1;
                            currChar =  ' ';
                           	_sExtLine += currChar;
                        }
						else if(lastChar == '/' && currChar == '/') {
							_sExtLine = _sExtLine.Substring(0, _sExtLine.Length-1); //revert
							break;
						}
						else if(lastChar == '/' && currChar == '*') {
							_sExtLine = _sExtLine.Substring(0, _sExtLine.Length-1); //revert
							_bInsideMultilineComment = true;
						}
						else if((currChar == ';' || currChar == '{' || currChar == '}') && !_bSingleLineMode) {
                            if(currChar != ';') {//; on same line
                                saveLine(_aDest, _sExtLine);_sExtLine="";lastChar=' '; //saveline
                            }
							_sExtLine += currChar;//Keep ';' ?
                             saveLine(_aDest, _sExtLine);_sExtLine="";lastChar=' '; //saveline
                        }
                        else if(currChar == '"' && lastChar != '\\') {
                              	_bInsideStringLiteral = true;
                                _sExtLine += currChar;
						}else { 
							_sExtLine += currChar;
						}
					}else if(_bInsideMultilineComment) {
						if(lastChar == '*' && currChar == '/') {
							_bInsideMultilineComment = false;
							lastChar = ' ';
						}
					}else if(_bInsideStringLiteral) {
                        _sExtLine += currChar;
                        if(currChar == '"' && lastChar != '\\' ) {
							_bInsideStringLiteral = false;
							lastChar = ' ';
						}
                    }
				}

				if(_bSingleLineMode) {
					if(_sExtLine != "" && _sExtLine[_sExtLine.Length-1] == '\\') { //Special char to make multiline '\'
						_sExtLine = _sExtLine.Substring(0, _sExtLine.Length-1); //revert
					}else {
						_bSingleLineMode = false;
						saveLine(_aDest, _sExtLine);_sExtLine="";lastChar=' '; //saveline
					}
				}else { 
                    if(!_bSingleLineMode && lastChar > 32) { //32 = ascii table space ' '
                        _sExtLine += ' ';
                    }
                }
            }
            aCppLine.Add(" ");//Normalise with a empty ending line (to easily get next line)
        }


		public bool validate_Ifdef( Str _sLine ) {
			if(_sLine.Cmp("#ifdef")) {
				string _key	= _sLine.next_word("#ifdef".Length);
				if(aDefine.ContainsKey(_key)) {
					return true;
				}
            }
			if(_sLine.Cmp("#ifndef")) {
				string _key	= _sLine.next_word("#ifdef".Length);
				if(!aDefine.ContainsKey(_key)) {
					return true;
				}
            }

			
			//Just use simple case for now
			if(_sLine.Cmp("#if") || _sLine.Cmp("#elif")) {
                return oEval.eval(_sLine);

				//string _key		= _sLine.next_word("#if".Length);
				//string _value	= _sLine.next_word(_sLine.lastidx);


				/*
				if(_value != "") {
					Log.debug("aa: " + _value);
				}
				if(aDefine.ContainsKey(_key)) {
					return true;
				}*/
            }

			return false;
		}


        public string valid_line(int idx, Str _sLine) {
            string _sType =  "";
           if( sLine_Prec.Cmp("extern \"C\"")) {
                _sType = "extern_C";
            }
            if( _sLine.Cmp("{")) {
                aScopeLine_stack_line.Enqueue(idx);
                aScopeLine_stack_type.Enqueue(_sType);
                if(_sType != "extern_C") {
                    _scope++;
                }
                return "/* " + _sType + " */" ;
            }
            if( _sLine.Cmp("}")) {
                int    _nResLine  = aScopeLine_stack_line.Dequeue();
                string _sResType  = aScopeLine_stack_type.Dequeue();
                if(_sResType != "extern_C") {
                     _scope--;
                }
                return "/* " +_sResType + " [" + (_nResLine+1)  + "] */" ;
            }
            return "";
        }

        //Second pass
		public void parse_optimize(List<string> _aSrc, List<string> _aDest) {
            /// Initialize ///
			_scope_preproc = 0;
			_scope = 0;
            sLine_Prec = new Str("");
            aScopeLine_stack_line = new QList<int>();
            aScopeLine_stack_type = new QList<string>();
            /////////////////

			string[] _aScope =  _aSrc.ToArray();
			int idx = -1;
			parse_preproc_scope(_aDest, _aScope, idx);
        }

		public int parse_preproc_scope( List<string> _aDest, string[] _aScope,  int idx, bool _bParentBlocEnabled = true) {

			string _indent = "";
			for(int i = 0; i < _scope_preproc; i++) {
				_indent += "	";
			}

			string _sScopeHeader = "";

			bool _bBlocEnabled = true;
			bool _bBlocActivated = false;
			bool _bReturn = false;


			if(idx >= 0) {
				Str _sLine = new Str(_aScope[idx]);
				_sScopeHeader = _sLine.str + "[" + (idx+1) + "]";
				_bBlocActivated = _bBlocEnabled = validate_Ifdef(_sLine);
			}
			idx++;

			for(;idx < _aScope.Length-1;idx++) {Str _sLine = new Str(_aScope[idx]);
				//////////////////////////////////
				
				if(_sLine.Cmp("#elif") && !_bBlocActivated) {
					//TODO
				}
				if(_sLine.Cmp("#else") && !_bBlocActivated) {
					_bBlocEnabled = true;
				}


				///////////// End scope ///////////////////
				if(_sLine.Cmp("#endif")) {_bBlocEnabled=true;_bReturn=true;}

				///////////// SHOW  ///////////////
				if(_bBlocEnabled && _bParentBlocEnabled) {
                    string _sExtra = "";
                    _sExtra = valid_line(idx, _sLine);
					
					if(_sLine.Cmp("#else") || _sLine.Cmp("#endif")) {
						_sExtra = "/*" +  _sScopeHeader + "*/";
					}
                    _aDest.Add(_indent +  _sLine.str + _sExtra);
                }else {
					_aDest.Add(_indent + "//!" + _sLine.str);
				}
				////////////////////////////////////////////
            
                if(_sLine.Cmp("#define")) {
                    string _key		= _sLine.next_word("#define".Length);
				 //   string _value	= _sLine.next_word(_sLine.lastidx);
				    string _value	= _sLine.substr(_sLine.next_start_word(_sLine.lastidx));
                    define_add(_key, new Expression(_key,  new Str(_value) ));
                }



                //////////////////////////////////////////
                sLine_Prec = _sLine;
				if(_bReturn) {
					 _scope_preproc--;
					return idx;
				}

				//////////// New scope ///////////////////
				if(_sLine.Cmp("#if")) { 
					_scope_preproc++;
					 idx = parse_preproc_scope(_aDest, _aScope, idx, _bBlocEnabled & _bParentBlocEnabled);
					continue;
				}
                //////////////////////////////////////////
			}
			return idx;
		}


		


           //Second pass remove #if 0 / #endif
        public void parse_simple_optimize(List<string> _aSrc, List<string> _aDest) {
            int _scope_NotUsed = 0;
            int _scope_preproc = 1;//1 = global scope
            foreach(string __sLine in _aSrc) {Str _sLine = new Str(__sLine);
                bool _bKeepLine = false;

                if(_sLine.Cmp("#if")) {
                    _scope_preproc++;
                }

                if(_sLine.Cmp("#if 0")) {
                  if(_scope_NotUsed == 0) { _scope_NotUsed = _scope_preproc; _bKeepLine = true;}
                }

                if(_sLine.Cmp("#else")) {
                    if(_scope_NotUsed == _scope_preproc) {_scope_NotUsed=0;_bKeepLine = true;}//back to normal
                }

               if(_sLine.Cmp("#endif")) {
                    if(_scope_NotUsed == _scope_preproc) {_scope_NotUsed=0;_bKeepLine = true;}//back to normal
                    _scope_preproc--;
                }


                if(_bKeepLine || _scope_NotUsed == 0) {
                    _aDest.Add(_sLine.str);
                }else {
                    //aCppLine_Opt.Add("//" + _sLine.str);
                }

            }
        }


		int _scope;
		int _scope_preproc;
		int _inElseBloc;


		//Calculate '{' / '}' scope, but some #if / #else define both '{', so we ignore scope in #else bloc 
        public void parse_gblscope() {
			_scope = 1;			//1 = global scope
			_scope_preproc = 1;	//1 = global scope
			

			int count = 0;
			string[] _aScope =  aCppLine_Opt.ToArray();
			int idx = 0;
			parse_scope(_aScope, idx, _scope_preproc, _scope);
        }

		public int parse_scope(string[] _aScope, int idx, int _base_scope_preproc, int ini_scope) {
			bool _bInsideExternC = false;
			int _scope_base = _scope;


			for(;idx < _aScope.Length-1;idx++) {Str _sLine = new Str(_aScope[idx]);

				///////// PREPROC SCOPE /////////////
				if(_sLine.Cmp("#if")) {
                    _scope_preproc++;
                }
                if(_sLine.Cmp("#else") || _sLine.Cmp("#elif") ) {
					//  aCppLine_GlobalScope.Add(_sLine.str);
					if(_scope_preproc == _base_scope_preproc) {_scope=ini_scope+1;return idx; }
					//if(_scope_preproc == _base_scope_preproc) {	_scope =ini_scope;}
                }
               if(_sLine.Cmp("#endif")) {
					if(_scope_preproc == _base_scope_preproc) {_base_scope_preproc= 0; }
                    _scope_preproc--;
                }
			   //	if(_inElseBloc != 0) {  aCppLine_GlobalScope.Add("//E|" +(_scope ) + "//" + _sLine.str) ; continue;}
			   /////////////////////////////////////
		


				if(_sLine.Cmp("extern \"C\"")) {
					_bInsideExternC = true;
				}

				 if((_scope ) == 1) { //Global scope
                    aCppLine_GlobalScope.Add(_sLine.str);
                }else {
					 //aCppLine_GlobalScope.Add("//" + _scope  + "|" + _scope_preproc +  "|" +  _inElseBloc+ "//" + _sLine.str);
                     aCppLine_GlobalScope.Add("//" +(_scope ) + "//" + _sLine.str);
                }

				if(_sLine.str[0] == '{') {
						if(!_bInsideExternC) {}_scope++;
						 idx++;
						idx = parse_scope(_aScope, idx, _scope_preproc, _scope-1);
						if(!_bInsideExternC) {}_scope--;
						continue;
                }


                if(_sLine.str[0] == '}') {
					//idx++;
					return idx;
				}
			}
			return idx;
		}


        

		public bool is_funcProto(string _sLine) { //Line must be trimmed & not empty (min 4 char)
			//not directive
			if (_sLine[0] == '#') {return false;}
			//must end with ;
			if(_sLine[_sLine.Length-1] != ';') {return false;}



			return false;
		}

		public string extract_FuncProto(string _sLine) {


			return _sLine;
		}

    }
}

