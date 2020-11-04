namespace Lib_GZ_OpenGL{class cOpenGL;}
#ifndef tHDef_HH_Lib_GZ_OpenGL_OpenGL
#define tHDef_HH_Lib_GZ_OpenGL_OpenGL
#include "Lib_GZ/GzTypes.h"
namespace Lib_GZ_OpenGL{namespace OpenGL{

	//Public const
	//Private const

	//Enum
	struct eShaderInfo{
		enum Type {
			SHADER_TYPE = gzInt(35663),
			DELETE_STATUS = gzInt(35712),
			COMPILE_STATUS = gzInt(35713),
			INFO_LOG_LENGTH = gzInt(35716),
			SHADER_SOURCE_LENGTH = gzInt(35720)
		};
		Type t_;inline eShaderInfo(Type t) : t_(t) {}operator Type () const {return t_;}
		inline eShaderInfo(){};
	};
	struct eProgramInfo{
		enum Type {
			LINK_STATUS = gzInt(35714)
		};
		Type t_;inline eProgramInfo(Type t) : t_(t) {}operator Type () const {return t_;}
		inline eProgramInfo(){};
	};
	struct eShader{
		enum Type {
			VERTEX_SHADER = gzInt(35633),
			FRAGMENT_SHADER = gzInt(35632)
		};
		Type t_;inline eShader(Type t) : t_(t) {}operator Type () const {return t_;}
		inline eShader(){};
	};
	struct eGetName{
		enum Type {
			MAJOR_VERSION = gzInt(33307),
			MINOR_VERSION = gzInt(33308)
		};
		Type t_;inline eGetName(Type t) : t_(t) {}operator Type () const {return t_;}
		inline eGetName(){};
	};
	struct eDrawMode{
		enum Type {
			POINTS = gzInt(0),
			PATCHES = gzInt(14),
			LINES = gzInt(1),
			LINE_LOOP = gzInt(2),
			LINES_ADJACENCY = gzInt(10),
			LINE_STRIP = gzInt(3),
			LINE_STRIP_ADJACENCY = gzInt(11),
			TRIANGLES = gzInt(4),
			TRIANGLE_FAN = gzInt(6),
			TRIANGLES_ADJACENCY = gzInt(12),
			TRIANGLE_STRIP = gzInt(5),
			TRIANGLE_STRIP_ADJACENCY = gzInt(13)
		};
		Type t_;inline eDrawMode(Type t) : t_(t) {}operator Type () const {return t_;}
		inline eDrawMode(){};
	};
	struct eDrawFlow{
		enum Type {
			STREAM_DRAW = gzInt(35040),
			STATIC_DRAW = gzInt(35044),
			DYNAMIC_DRAW = gzInt(35048)
		};
		Type t_;inline eDrawFlow(Type t) : t_(t) {}operator Type () const {return t_;}
		inline eDrawFlow(){};
	};
	struct eTypeSize{
		enum Type {
			Vec1 = 1 * 4,
			Vec2 = 2 * 4,
			Vec3 = 3 * 4,
			Vec4 = 4 * 4
		};
		Type t_;inline eTypeSize(Type t) : t_(t) {}operator Type () const {return t_;}
		inline eTypeSize(){};
	};
	struct eVarType{
		enum Type {
			BYTE = gzInt(5120),
			UNSIGNED_BYTE = gzInt(5121),
			FLOAT = gzInt(5126)
		};
		Type t_;inline eVarType(Type t) : t_(t) {}operator Type () const {return t_;}
		inline eVarType(){};
	};
	struct eClearBuffer{
		enum Type {
			COLOR_BUFFER_BIT = gzInt(16384),
			DEPTH_BUFFER_BIT = gzInt(256),
			STENCIL_BUFFER_BIT = gzInt(1024)
		};
		Type t_;inline eClearBuffer(Type t) : t_(t) {}operator Type () const {return t_;}
		inline eClearBuffer(){};
	};
	struct eVecLength{
		enum Type {
			Vec1 = 1,
			Vec2 = 2,
			Vec3 = 3,
			Vec4 = 4
		};
		Type t_;inline eVecLength(Type t) : t_(t) {}operator Type () const {return t_;}
		inline eVecLength(){};
	};
	struct eBufferTarget{
		enum Type {
			ARRAY_BUFFER = gzInt(34962),
			READ_BUFFER = gzInt(3074),
			TEXTURE_BUFFER = gzInt(35882),
			TRANSFORM_FEEDBACK_BUFFER = gzInt(35982),
			UNIFORM_BUFFER_BINDING = gzInt(35368),
			ELEMENT_ARRAY_BUFFER = gzInt(34963),
			ARRAY_BUFFER_BINDING = gzInt(34964),
			ELEMENT_ARRAY_BUFFER_BINDING = gzInt(34965)
		};
		Type t_;inline eBufferTarget(Type t) : t_(t) {}operator Type () const {return t_;}
		inline eBufferTarget(){};
	};
}}
#endif