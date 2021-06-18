/*  -== Xternal ==-
 *
 *  Utility and functions that rely on external libs for common usage
 *
 *  @autors
 *   - Maeiky
 *  
 * Copyright (c) 2021 - V·Liance
 *
 * The contents of this file are subject to the Apache License Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * If a copy of the Apache License Version 2.0 was not distributed with this file,
 * You can obtain one at https://www.apache.org/licenses/LICENSE-2.0.html
 *
*/						
#define ARRAY(name_, type_, maxsize_)                       			\
																		\
typedef struct name_{                                       			\
	type_ data[maxsize_];                                   			\
	int size;						                        			\
}name_;                                                					\
																		\
inl type_* name_##_add(name_* _this, type_ _new){						\
	if(_this->size < maxsize_){											\
		_this->data[_this->size] = _new;								\
		_this->size++;													\
		return &_this->data[_this->size-1];								\
	}																	\
	err_printl("Max module reached: %d, max:", _this->size, maxsize_);  \
	return 0;                                                    		\
}                                                                    	\
																		\
inl bool name_##_sub(name_* _this){                						\
	return false;                                                    	\
}                                                                       \
																		\
inl bool name_##_contain(name_* _this, type_* _match){                  \
	for(int i =0; i < _this->size; i++){                              	\
		if(_match == &_this->data[i]){                                  \
			return true;                                                \
		}                                                               \
	}                                                                   \
	return false;                                                       \
}                                                                       \
																		\
inl bool name_##_reset(name_* _this){                					\
	_this->size = 0;                                                 	\
}                                                                        
