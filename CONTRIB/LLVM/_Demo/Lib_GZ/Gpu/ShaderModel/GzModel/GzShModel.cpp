//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Gpu/ShaderModel/GzModel/GzShModel.h"

#include "Lib_GZ/Gpu/ShaderBase/FragmentShader.h"
#include "Lib_GZ/Gpu/ShaderBase/VertexShader.h"
#include "Lib_GZ/Gpu/ShaderBase/ProgramShader.h"
#include "Lib_GZ/Gpu/Base/Attribute.h"
#include "Lib_GZ/Gpu/Base/Uniform.h"
#include "Lib_GZ/Gpu/Base/UnVec2.h"
#include "Lib_GZ/Gpu/ShaderBase/Vbo.h"
#include "Lib_GZ/Gpu/GpuObj/GpuBatch.h"
#include "Lib_GZ/Base/Perspective.h"
#include "Lib_GZ/Base/TestPod.h"
#include "Lib_GZ/Base/TestPod2.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"

//Sub Class include
#include "Lib_GZ/Base/Vec2.h"


namespace Lib_GZ{namespace Gpu{namespace ShaderModel{namespace GzModel{namespace GzShModel{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ GzShModel
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"GzShModel"},{0,"fLoad"},{0,"fPod"},{0,"fDraw"}};
#endif
///////////////////////////////

}

GZ_mCppClass(GzShModel)

cGzShModel::cGzShModel(Lib_GZ::cBase* _parent) : Lib_GZ::cClass(_parent){
	

}

void cGzShModel::Ini_cGzShModel(){ gz_(0)
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("--- GzShModel Created!! ---"));
	fLoad();
}

gzBool cGzShModel::fLoad(){ gz_(1)
	oVertex = gzSCast<Lib_GZ::Gpu::ShaderBase::cVertexShader>((Lib_GZ::Gpu::ShaderBase::VertexShader::Get(thread)->New(this)));
	oFragement = gzSCast<Lib_GZ::Gpu::ShaderBase::cFragmentShader>((Lib_GZ::Gpu::ShaderBase::FragmentShader::Get(thread)->New(this)));
	oProgram = gzSCast<Lib_GZ::Gpu::ShaderBase::cProgramShader>((Lib_GZ::Gpu::ShaderBase::ProgramShader::Get(thread)->New(this)));
	// --- Tag Glsl
		oVertex->fAddLine(gzStrL("in vec4 atObjPos;"));
		oVertex->fAddLine(gzStrL("xflat out vec4 vColor;"));
		oVertex->fAddLine(gzStrL("out vec2 ioTexture;"));
		oVertex->fAddLine(gzStrL("void main(){"));
		oVertex->fAddLine(gzStrL("if (nVertexID < 2){"));
		oVertex->fAddLine(gzStrL("if(nVertexID == 0){"));
		oVertex->fAddLine(gzStrL("gl_Position.x = -1.0;"));
		oVertex->fAddLine(gzStrL("gl_Position.y = -1.0;"));
		oVertex->fAddLine(gzStrL("}else{"));
		oVertex->fAddLine(gzStrL("gl_Position.x = 1.0;"));
		oVertex->fAddLine(gzStrL("gl_Position.y = -1.0;"));
		oVertex->fAddLine(gzStrL("}"));
		oVertex->fAddLine(gzStrL("}else{"));
		oVertex->fAddLine(gzStrL("if(nVertexID == 2){"));
		oVertex->fAddLine(gzStrL("gl_Position.x = 1.0;"));
		oVertex->fAddLine(gzStrL("gl_Position.y = 1.0;"));
		oVertex->fAddLine(gzStrL("}else{"));
		oVertex->fAddLine(gzStrL("gl_Position.x = -1.0;"));
		oVertex->fAddLine(gzStrL("gl_Position.y = 1.0;"));
		oVertex->fAddLine(gzStrL("}"));
		oVertex->fAddLine(gzStrL("}"));
		oVertex->fAddLine(gzStrL("gl_Position.z = 0.5;"));
		oVertex->fAddLine(gzStrL("gl_Position.w = 1.0;"));
		oVertex->fAddLine(gzStrL("//gl_Position.xy = atObjPos.xy; //Temp"));
		oVertex->fAddLine(gzStrL("vColor = atObjPos;"));
		oVertex->fAddLine(gzStrL("//vColor = vec4(atObjPos.y, 0.0,1.0,1.0 );"));
		oVertex->fAddLine(gzStrL("// vColor = vec4(1.0,0.0,0.0,1.0);"));
		oVertex->fAddLine(gzStrL("}"));
	// --- End Tag Glsl
	oVertex->fLoad();
	if (oVertex->fCompile() == false){
		Lib_GZ::Sys::Debug::Get(thread)->fError(gzStrL("Vertex Shader:  ") + oVertex->fGetErrorLine());
		Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL(" -->") + oVertex->fGetLog());
	}else{
		Lib_GZ::Sys::Debug::Get(thread)->fPass(gzStrL("Vertex Success"));
	}
	// --- Tag Glsl
		oFragement->fAddLine(gzStrL("uniform vec2 vTexDim;"));
		oFragement->fAddLine(gzStrL("uniform vec2 vWinDim;"));
		oFragement->fAddLine(gzStrL("uniform vec2 vMouse;"));
		oFragement->fAddLine(gzStrL("xflat in vec4 vColor;"));
		oFragement->fAddLine(gzStrL("xflat in vec2 ioTexture;"));
		oFragement->fAddLine(gzStrL("vec3 cam_pos = vec3(0,0,0);"));
		oFragement->fAddLine(gzStrL("float PI=3.14159265;"));
		oFragement->fAddLine(gzStrL("///////////////////////// OBJ /////////////////"));
		oFragement->fAddLine(gzStrL("//Sol"));
		oFragement->fAddLine(gzStrL("vec2 obj_floor( vec3 p){"));
		oFragement->fAddLine(gzStrL("return vec2(p.y+10.0,0);"));
		oFragement->fAddLine(gzStrL("}"));
		oFragement->fAddLine(gzStrL("//Sphere"));
		oFragement->fAddLine(gzStrL("vec2 obj_sphere( vec3 p){"));
		oFragement->fAddLine(gzStrL("float d = length(p)-1.9;"));
		oFragement->fAddLine(gzStrL("return vec2(d,1);"));
		oFragement->fAddLine(gzStrL("}"));
		oFragement->fAddLine(gzStrL("//Tore"));
		oFragement->fAddLine(gzStrL("vec2 obj_torus( vec3 p){"));
		oFragement->fAddLine(gzStrL("vec2 r = vec2(1.4,1.2);"));
		oFragement->fAddLine(gzStrL("vec2 q = vec2(length(p.xz)-r.x,p.y);"));
		oFragement->fAddLine(gzStrL("float d = length(q)-r.y;"));
		oFragement->fAddLine(gzStrL("return vec2(d,1);"));
		oFragement->fAddLine(gzStrL("}"));
		oFragement->fAddLine(gzStrL("//Box"));
		oFragement->fAddLine(gzStrL("vec2 obj_round_box(vec3 p){"));
		oFragement->fAddLine(gzStrL("float d = length(max(abs(p)-vec3(0.3,0.15,1.0),0.0))-0.2;"));
		oFragement->fAddLine(gzStrL("return vec2(d,1);"));
		oFragement->fAddLine(gzStrL("}"));
		oFragement->fAddLine(gzStrL("/*"));
		oFragement->fAddLine(gzStrL("vec2 obj_round_box(vec3 p){"));
		oFragement->fAddLine(gzStrL("float d= length(max(abs(p)-vec3(1.0,0.5,2.0),0.0))-0.08;"));
		oFragement->fAddLine(gzStrL("//  float d = length(max(abs(p)-vec3(2.0,0.5,2.0),0.0))-0.2;"));
		oFragement->fAddLine(gzStrL("return vec2(d,1);"));
		oFragement->fAddLine(gzStrL("}*/"));
		oFragement->fAddLine(gzStrL("///////////////////////////////////////////////////////"));
		oFragement->fAddLine(gzStrL("/// Operator ////////"));
		oFragement->fAddLine(gzStrL("vec2 op_union(vec2 a, vec2 b){"));
		oFragement->fAddLine(gzStrL("float d = min(a.x, b.x);"));
		oFragement->fAddLine(gzStrL("return vec2(d,1);"));
		oFragement->fAddLine(gzStrL("}"));
		oFragement->fAddLine(gzStrL("vec2 op_rep(vec3 p, vec3 c){"));
		oFragement->fAddLine(gzStrL("vec3 q = mod(p,c)-0.5*c;"));
		oFragement->fAddLine(gzStrL("return obj_round_box(q);"));
		oFragement->fAddLine(gzStrL("}"));
		oFragement->fAddLine(gzStrL("vec2 op_sub(vec2 a, vec2 b)	{"));
		oFragement->fAddLine(gzStrL("float d = max(a.x, -b.x);"));
		oFragement->fAddLine(gzStrL("return vec2(d,1);"));
		oFragement->fAddLine(gzStrL("}"));
		oFragement->fAddLine(gzStrL("vec2 op_blend(vec3 p, vec2 a, vec2 b){"));
		oFragement->fAddLine(gzStrL("float s = smoothstep(length(p), 0.0, 1.0);"));
		oFragement->fAddLine(gzStrL("float d = mix(a.x, b.x, s);"));
		oFragement->fAddLine(gzStrL("return vec2(d,1);"));
		oFragement->fAddLine(gzStrL("}"));
		oFragement->fAddLine(gzStrL("///////////   Union  ////////////////////"));
		oFragement->fAddLine(gzStrL("vec2 obj_union( vec2 obj0,  vec2 obj1){"));
		oFragement->fAddLine(gzStrL("if (obj0.x < obj1.x){"));
		oFragement->fAddLine(gzStrL("return obj0;"));
		oFragement->fAddLine(gzStrL("}else{"));
		oFragement->fAddLine(gzStrL("return obj1;"));
		oFragement->fAddLine(gzStrL("}"));
		oFragement->fAddLine(gzStrL("}"));
		oFragement->fAddLine(gzStrL("// Union d'objets"));
		oFragement->fAddLine(gzStrL("vec2 distance_to_obj( vec3 p){"));
		oFragement->fAddLine(gzStrL("//return obj_floor(p);"));
		oFragement->fAddLine(gzStrL("//return obj_union(obj_floor(p), obj_round_box(p));"));
		oFragement->fAddLine(gzStrL("//return obj_union(obj_floor(p), op_union(obj_round_box(p), obj_sphere(p)));"));
		oFragement->fAddLine(gzStrL("//return obj_union(obj_floor(p), op_sub(obj_round_box(p), obj_sphere(p)));"));
		oFragement->fAddLine(gzStrL("//return obj_union(obj_floor(p), op_blend(p, obj_round_box(p), obj_torus(p))   )  ;"));
		oFragement->fAddLine(gzStrL("//return obj_union(obj_floor(p), op_blend(p, obj_round_box(p), obj_torus(p))   )  ;"));
		oFragement->fAddLine(gzStrL("return obj_union(obj_floor(p), op_rep(p , vec3(3.0, 2.0, 6.0)));"));
		oFragement->fAddLine(gzStrL("}"));
		oFragement->fAddLine(gzStrL("//// Couleur du sol (damier)"));
		oFragement->fAddLine(gzStrL("vec3 floor_color( vec3 p){"));
		oFragement->fAddLine(gzStrL("vec3 c = vec3(8.0, 5.0, 9.0);"));
		oFragement->fAddLine(gzStrL("vec3 q = mod(p,c) - 0.5 * c;"));
		oFragement->fAddLine(gzStrL("return  q ;"));
		oFragement->fAddLine(gzStrL("// return  vec3( smoothstep(length(p), fract(p.x*0.2), fract(p.y*0.2)),1,1);"));
		oFragement->fAddLine(gzStrL("/*"));
		oFragement->fAddLine(gzStrL("if (fract(p.x*0.2)>0.2){"));
		oFragement->fAddLine(gzStrL("if (fract(p.z*0.2)>0.2){"));
		oFragement->fAddLine(gzStrL("return vec3(0,0.1,0.2);"));
		oFragement->fAddLine(gzStrL("}else{"));
		oFragement->fAddLine(gzStrL("return vec3(1,1,1);"));
		oFragement->fAddLine(gzStrL("}"));
		oFragement->fAddLine(gzStrL("}else{"));
		oFragement->fAddLine(gzStrL("if (fract(p.z*.2)>.2){"));
		oFragement->fAddLine(gzStrL("return vec3(1,1,1);"));
		oFragement->fAddLine(gzStrL("}else{"));
		oFragement->fAddLine(gzStrL("return vec3(0.3,0,0);"));
		oFragement->fAddLine(gzStrL("}"));
		oFragement->fAddLine(gzStrL("}*/"));
		oFragement->fAddLine(gzStrL("}"));
		oFragement->fAddLine(gzStrL("//// Couleur de la primitive"));
		oFragement->fAddLine(gzStrL("vec3 prim_c( vec3 p){"));
		oFragement->fAddLine(gzStrL("return vec3(0.9137,0.83,0.70);"));
		oFragement->fAddLine(gzStrL("}"));
		oFragement->fAddLine(gzStrL("void main(){"));
		oFragement->fAddLine(gzStrL("vec2 q = ( gl_FragCoord.xy / vec2(800.0,800.0) );"));
		oFragement->fAddLine(gzStrL("//FragColor = vec4(0,q.y,0,1.0);"));
		oFragement->fAddLine(gzStrL("//return;"));
		oFragement->fAddLine(gzStrL("float _nMove = 2.5 * vMouse.x;"));
		oFragement->fAddLine(gzStrL("//vec2 q = vec2(1.0, 0.5);"));
		oFragement->fAddLine(gzStrL("vec2 vPos = -1.0 + 2.0 * q;"));
		oFragement->fAddLine(gzStrL("// Inclinaison de la caméra."));
		oFragement->fAddLine(gzStrL("vec3 vuv = vec3(0,1.5,0.0);"));
		oFragement->fAddLine(gzStrL("// Direction de la caméra."));
		oFragement->fAddLine(gzStrL("vec3 vrp = vec3(0.5,0.5,1.0);"));
		oFragement->fAddLine(gzStrL("//vec3 vrp = vec3(0.0, _nMove,  0.0) * 6.0;"));
		oFragement->fAddLine(gzStrL("// Position de la caméra."));
		oFragement->fAddLine(gzStrL("vec2 mouse = vec2(0.5, 0.5);"));
		oFragement->fAddLine(gzStrL("float mx = mouse.x* PI * 2.0;"));
		oFragement->fAddLine(gzStrL("float my = mouse.y* PI / 2.01;"));
		oFragement->fAddLine(gzStrL("//vec3 prp = vec3(  cos(my)*cos(mx),  sin(my),   cos(my)*sin(mx)  ) * 6.0;"));
		oFragement->fAddLine(gzStrL("vec3 prp = vec3(  _nMove * 1.5 - 0.2 , _nMove - 0.3- 1.0,   -0.6 ) * 6.0 ;"));
		oFragement->fAddLine(gzStrL("//vec3 prp = cam_pos;"));
		oFragement->fAddLine(gzStrL("vec3 vpn = normalize(vrp-prp);"));
		oFragement->fAddLine(gzStrL("vec3 u = normalize(cross(vuv , vpn));"));
		oFragement->fAddLine(gzStrL("vec3 v = cross(vpn , u);"));
		oFragement->fAddLine(gzStrL("vec3 vcv = (prp + vpn);"));
		oFragement->fAddLine(gzStrL("//vec3 scrCoord=vcv+vPos.x*u*resolution.x/resolution.y+vPos.y*v;"));
		oFragement->fAddLine(gzStrL("vec3 scrCoord = vcv + vPos.x * u * 0.8 + vPos.y * v * 0.8;"));
		oFragement->fAddLine(gzStrL("vec3 scp = normalize(scrCoord - prp);"));
		oFragement->fAddLine(gzStrL("// Raymarching."));
		oFragement->fAddLine(gzStrL("const vec3 e = vec3(0.02, 0, 0);"));
		oFragement->fAddLine(gzStrL("const float maxd = 100.0;"));
		oFragement->fAddLine(gzStrL("vec2 d = vec2(0.02,0.0);"));
		oFragement->fAddLine(gzStrL("vec3 c,p,N;"));
		oFragement->fAddLine(gzStrL("float f = 1.0;"));
		oFragement->fAddLine(gzStrL("for(int i = 0; i< 260; i++){"));
		oFragement->fAddLine(gzStrL("if ((abs(d.x) < .001) || (f > maxd)) {"));
		oFragement->fAddLine(gzStrL("break;"));
		oFragement->fAddLine(gzStrL("}"));
		oFragement->fAddLine(gzStrL("f += d.x;"));
		oFragement->fAddLine(gzStrL("p = prp + scp * f;"));
		oFragement->fAddLine(gzStrL("d = distance_to_obj(p);"));
		oFragement->fAddLine(gzStrL("}"));
		oFragement->fAddLine(gzStrL("if (f < maxd){"));
		oFragement->fAddLine(gzStrL("if (d.y==0.0){"));
		oFragement->fAddLine(gzStrL("c=floor_color(p);"));
		oFragement->fAddLine(gzStrL("}else{"));
		oFragement->fAddLine(gzStrL("c=prim_c(p);"));
		oFragement->fAddLine(gzStrL("}"));
		oFragement->fAddLine(gzStrL("vec3 n = vec3(d.x-distance_to_obj(p-e.xyy).x, d.x-distance_to_obj(p-e.yxy).x,  d.x-distance_to_obj(p-e.yyx).x);"));
		oFragement->fAddLine(gzStrL("N = normalize(n);"));
		oFragement->fAddLine(gzStrL("float b=dot(N,normalize(prp-p));"));
		oFragement->fAddLine(gzStrL("// Simple éclairage Phong, LightPosition = CameraPosition"));
		oFragement->fAddLine(gzStrL("FragColor = vec4((b*c+pow(b,16.0))*(1.0-f*.01),1.0);"));
		oFragement->fAddLine(gzStrL("}else{"));
		oFragement->fAddLine(gzStrL("FragColor = vec4(0.0 + vColor.x,0,0,1.0);"));
		oFragement->fAddLine(gzStrL("//FragColor = vec4(0 ,0,0,1.0);"));
		oFragement->fAddLine(gzStrL("}"));
		oFragement->fAddLine(gzStrL("}"));
	// --- End Tag Glsl
	oFragement->fLoad();
	if (oFragement->fCompile() == false){
		Lib_GZ::Sys::Debug::Get(thread)->fError(gzStrL("Fragment Shader: ") + oFragement->fGetErrorLine());
		Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL(" -->") + oFragement->fGetLog());
	}else{
		Lib_GZ::Sys::Debug::Get(thread)->fPass(gzStrL("Fragement Shader Success"));
	}
	oProgram->fAttachShader((Lib_GZ::Gpu::ShaderBase::cShaderBase*)(oVertex.get()));
	oProgram->fAttachShader((Lib_GZ::Gpu::ShaderBase::cShaderBase*)(oFragement.get()));
	if (oProgram->fLink() != 0){
		Lib_GZ::Sys::Debug::Get(thread)->fPass(gzStrL("Link Success"));
	}
	oProgram->fUse();
	oProgram->fSetDefaultAttribDivisor(1);
	oVboBatch = gzSCast<Lib_GZ::Gpu::ShaderBase::cVbo>(oProgram->fAddVbo());
	oGpuBatch = gzSCast<Lib_GZ::Gpu::GpuObj::cGpuBatch>((Lib_GZ::Gpu::GpuObj::GpuBatch::Get(thread)->New(this)));
	gzSp<Lib_GZ::Gpu::Base::cAttribute> _oAtObjPos = gzSCast<Lib_GZ::Gpu::Base::cAttribute>(oProgram->fAddAttribute(gzStrL("atObjPos")));
	gzSp<Lib_GZ::Gpu::Base::cAttribute> _oAtVertexID = gzSCast<Lib_GZ::Gpu::Base::cAttribute>(oProgram->fAddAttribute(gzStrL("atVertexID")));
	oUvMouse = gzSCast<Lib_GZ::Gpu::Base::cUnVec2>((Lib_GZ::Gpu::Base::UnVec2::Get(thread)->New(this, (Lib_GZ::Gpu::ShaderBase::cProgramShader*)(oProgram.get()), gzStrL("vMouse"))));
	gzSp<Lib_GZ::Base::cPerspective> _oPersv = gzSCast<Lib_GZ::Base::cPerspective>((Lib_GZ::Base::Perspective::Get(thread)->New(this)));
	gzPod<Lib_GZ::Base::cTestPod> _oPod = (Lib_GZ::Base::TestPod::Get(thread)->New(this, gzFloat(5), gzFloat(5)));
	gzPod<Lib_GZ::Base::cTestPod2> _oPod2 = (Lib_GZ::Base::TestPod2::Get(thread)->New(this, gzFloat(1), 2.5, gzFloat(3), gzFloat(4)));
	fPod((Lib_GZ::Base::cTestPod2*)(_oPod2.get()));
	return false;
}

void cGzShModel::fPod(Lib_GZ::Base::cTestPod2* _oPod){ gz_(2)
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("PodsX:") + gzStrF(_oPod->nW));
}

void cGzShModel::fDraw(){ gz_(3)
	oUvMouse->oVal->nX += 0.01;
	oUvMouse->fSend();
	oVboBatch->fSendData();
	oGpuBatch->fDraw();
}

gzAny cGzShModel::MemCopy(){
return (gzAny)new cGzShModel(*this);
}
gzAny cGzShModel::DeepCopy(){
return (gzAny)new cGzShModel(*this, true);
}
cGzShModel::~cGzShModel(){
}



}}}}