#define USE_OSMESA 1
#define USE_DITHERING_FOR_ARTISTIC_MEASURES 1
// Mesa is an open-source OpenGL implementation.
// OSMesa is its off-screen driver, used for rendering into a memory buffer
// rather than through a graphics card. This is great for making OpenGL work
// pretty much on anything, including DOSBox on its emulated basic VGA hardware.
//
// You can download my DJGPP-compiled version of OSMesa at:
// http://bisqwit.iki.fi/jutut/kuvat/programming_examples/djgpp_mesa.zip

#define GL_GLEXT_PROTOTYPES
#if USE_OSMESA
# include <osmesa.h>     // For everything OpenGL, but done all in software.
#else
# include <SDL_opengl.h>
#endif
#include <GL/glu.h>     // GLU = OpenGL utility library

// Standard C++ includes:
#include <algorithm>    // For std::min, std::max
#include <cmath>        // For std::pow, std::sin, std::cos
#include <vector>       // For std::vector, in which we store texture & lightmap
#include <list>         // Blobs are stored in a list.
#include <memory>

// DJGPP-specific include files, for accessing the screen & keyboard etc.:
#include <conio.h>        // For kbhit, getch, textmode (console access)
#include <dpmi.h>         // For __dpmi_int (mouse access)
#include <go32.h>         // For _dos_ds (VRAM access)
#include <sys/movedata.h> // For movedata (VRAM access)
#include <pc.h>         // For outportb (palette access)
#include <sys/farptr.h> // For _farsetsel and _farnspokeb (VRAM access)

#include "math.tcc"
#include "map.tcc"

#include <iostream>
#include <cstring>
#include "dos_goal.h"
// using namespace std;






namespace mesa_3d
{
	
	#include "../INCLUDE/cpcdos.h"
	
	std::unique_ptr<CpcdosOSx_CPintiCore> 
			Cpcdos_Wrapper (new CpcdosOSx_CPintiCore);
	
	int ID_contexte;

	extern "C" int mesa_main(int TailleX, int TailleY)
	{
		// Create class
		std::shared_ptr<mesa_3d::cpc_mesatest> Mesa_Instance (new mesa_3d::cpc_mesatest());

		// Create bitmap
		ID_contexte = Cpcdos_Wrapper->Create_Context(TailleX, TailleY);

		// Getting bitmap pointer
		unsigned int * pointeur = (unsigned int*) Cpcdos_Wrapper->Init_Get_Context_PTR(ID_contexte);
		
		W = TailleX;
		H = TailleY;
		
		// Execute!
		Mesa_Instance->mesatest_main(pointeur);
		
		return 0;
	}
	
	cpc_mesatest::cpc_mesatest(){}
	cpc_mesatest::~cpc_mesatest(){}
	
	
    void cpc_mesatest::Init() // Initialize graphics
    {

		__dpmi_regs regs = { };
        // Initialize mouse
        regs.x.ax = 0;
        __dpmi_int(0x33, &regs);


        // Create bayer 8x8 dithering matrix.
        for(unsigned y=0; y<8; ++y)
            for(unsigned x=0; x<8; ++x)
                this->Dither8x8[y][x] =
                    ((x  ) & 4)/4u + ((x  ) & 2)*2u + ((x  ) & 1)*16u
                  + ((x^y) & 4)/2u + ((x^y) & 2)*4u + ((x^y) & 1)*32u;
        // Create gamma-corrected look-up tables for dithering.
        double dtab[256], ptab[256];
        for(unsigned n=0; n<256; ++n)
        {
            dtab[n] = (255.0/256.0) - std::pow(n/256.0, 1/DitherGamma);
            ptab[n] = std::pow( n/255.0, 1.0 / PaletteGamma);
        }
        for(unsigned n=0; n<256; ++n)
            for(unsigned d=0; d<256; ++d)
            {
                this->ColorConvert[0][n][d] =     std::min(B-1, (unsigned)(ptab[n]*(B-1) + dtab[d]));
                this->ColorConvert[1][n][d] =   B*std::min(G-1, (unsigned)(ptab[n]*(G-1) + dtab[d]));
                this->ColorConvert[2][n][d] = G*B*std::min(R-1, (unsigned)(ptab[n]*(R-1) + dtab[d]));
            }
			
        // Set VGA mode 13h (320x200, 256 colors)
        // textmode(0x13); // Will set graphics mode despite the name.
        // Set up regular palette as configured earlier.
        // However, bias the colors towards darker ones in an exponential curve.
        // outportb(0x3C8, 0);
        // for(unsigned color=0; color< R*G*B; ++color)
        // {
            // outportb(0x3C9, std::pow(((color/(B*G))%R)*1./(R-1), PaletteGamma) *63);
            // outportb(0x3C9, std::pow(((color/    B)%G)*1./(G-1), PaletteGamma) *63);
            // outportb(0x3C9, std::pow(((color      )%B)*1./(B-1), PaletteGamma) *63);
        // }

    }
    void cpc_mesatest::Render() // Update the displayed screen
    {
		#if USE_DITHERING_FOR_ARTISTIC_MEASURES

		#endif
		printf("RENDER\n"); fflush(stdout);
		Cpcdos_Wrapper->Blitting(ID_contexte);
		// CPC_Blitter();
		
    }
    void cpc_mesatest::Close() // End graphics
    {
        textmode(C80); // Set textmode again.
    }



	void cpc_mesatest::InstallTexture(const void* data,int w,int h, int txno,
						int type1, int type2, int filter, int wrap)
	{
		glBindTexture(GL_TEXTURE_2D, txno);
		glPixelStorei(GL_UNPACK_ALIGNMENT, 1);
		// Control how the texture repeats or not
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, wrap);
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, wrap);
		// Control how the texture is rendered at different distances
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, filter);
		// Decide upon the manner in which to import the texture
		if(filter == GL_LINEAR || filter == GL_NEAREST)
			glTexImage2D(GL_TEXTURE_2D, 0, type1, w,h, 0, type1, type2, data);
		else
			gluBuild2DMipmaps(GL_TEXTURE_2D, type1, w,h, type1, type2, data);
	}

	void cpc_mesatest::ActivateTexture(int layer, int txno, int mode)
	{
		mode = GL_MODULATE;
		glActiveTextureARB(layer);
		glEnable(GL_TEXTURE_2D);
		glBindTexture(GL_TEXTURE_2D, txno);
		glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, mode);
		glColor3f(1,1,1);
	}
	void cpc_mesatest::DisableTexture(int layer)
	{
		glActiveTextureARB(layer);
		glBindTexture(GL_TEXTURE_2D, 0);
		glDisable(GL_TEXTURE_2D);
		glColor3f(1,1,1);
	}

	#if 0
	bool cpc_mesatest::CreatePaintBlotch(const HitRec& where)
	{
		// Return value: true if the paint stuck
		// to the surface. False if it slides.
		auto& m = map[where.wallno];
		auto v10 = m.p[1] - m.p[0];
		auto v30 = m.p[3] - m.p[0];
		int width  = v30.Len() * 32;
		int height = v10.Len() * 32;
		double radius = 32 * 0.45;

		std::vector<float>& decal = this->DecalMaps[where.wallno];
		if(!this->UseDecals[where.wallno])
		{
			decal.resize(width*height*4);
			for(size_t a=0, b=decal.size(); a<b; a*=4)
				decal[a+3] = 1.0; // transparent
		}
		int hitx = std::min((float)(width-1),  width  * where.alpha);
		int hity = std::min((float)(height-1), height * where.beta);

		InstallTexture(&decal[0],width,height, this->DecalIDs[wall.wallno],
					   GL_RGBA, GL_FLOAT, GL_LINEAR_MIPMA_LINEAR,
					   GL_CLAMP_TO_EDGE);
		return true;
	}
	#endif

	// This function converts the level map into OpenGL quad primitives.
	// Not particularly optimized (in particular, everything is always rendered).
	void cpc_mesatest::ExtractLevelMap()
	{
		glShadeModel(GL_SMOOTH);

		// Walls are all created using this one texture.
		if(!this->TexturesInstalled)
		{
			// Generate a very simple rectangle of a texture.
			glGenTextures(1, &this->WallTextureID);
			glGenTextures(nwalls, this->LightmapIDs);
			glGenTextures(nwalls, this->AddmapIDs);

			const unsigned txW=256, txH=256;
			GLfloat texture[txH*txW];
			for(unsigned y=0; y<txH; ++y)
				for(unsigned x=0; x<txW; ++x)
					texture[y*txW+x] =
					 0.7 - ( (1.0-std::sqrt( int(x-txW/2)*int(x-txW/2)/double(txW/2)/(txW/2)
										   + int(y-txH/2)*int(y-txH/2)/double(txH/2)/(txH/2))) *0.6
							-!(x<8 || y<8 || (x+8)>=txW || (y+8)>=txH))
						 * (0.1 + 0.3*std::pow((std::rand()%100)/100.0, 2.0));
					 ;
			InstallTexture(texture, txW,txH, this->WallTextureID, GL_LUMINANCE,GL_FLOAT, GL_LINEAR_MIPMAP_LINEAR, GL_REPEAT);
		}
		ActivateTexture(GL_TEXTURE0_ARB, this->WallTextureID, 0);

		for(unsigned wallno=0; wallno < nwalls; ++wallno)
		{
			const maptype& m = map[wallno];
			auto v10 = m.p[1] - m.p[0];
			auto v30 = m.p[3] - m.p[0];
			int width  = v30.Len(); // Number of times the texture
			int height = v10.Len(); // is repeated across the surface.

			if(!this->TexturesInstalled)
			{
				// Load lightmap.
				unsigned lmW = width * 32, lmH = height * 32;
				std::vector<float> map( lmW*lmH*3 );

				char Buf[64]; std::sprintf(Buf, "lmap%u.raw", wallno);
				// FILE* fp = std::fopen(Buf, "rb");
				Cpcdos_Wrapper->File_read_all((const char*)Buf, (const char*) "rb", (char*) &map[0]);
				
				// std::fread(&map[0], map.size(), sizeof(float), fp);
				// std::fclose(fp);
				InstallTexture(&map[0],lmW,lmH, this->LightmapIDs[wallno], GL_RGB, GL_FLOAT, GL_LINEAR, GL_CLAMP_TO_EDGE);

				// Because OSMesa clamps all texture values into [0,1] range, meaning
				// that a lightsource can only darken the texture, never brighten it,
				// we must have a separate multiply-map and an add-map, where the
				// former can darken the texture and the latter can only brighten it.
				// (Unfortunately, due to how mathematics works, the add-map
				//  is specific to the underlying texture is was designed for.)

				// std::sprintf(Buf, "smap%u.raw", wallno);
				if (Cpcdos_Wrapper->File_exist(Buf))
				// fp = std::fopen(Buf, "rb");
				// if(fp)
				{
					this->UseAddmap[wallno] = true;
					Cpcdos_Wrapper->File_read_all((const char*)Buf, (const char*) "rb", (char*) &map[0]);
					
					// std::fread(&map[0], map.size(), sizeof(float), fp);
					// std::fclose(fp);
					InstallTexture(&map[0],lmW,lmH, this->AddmapIDs[wallno], GL_RGB, GL_FLOAT, GL_LINEAR, GL_CLAMP_TO_EDGE);
				}
			} // this->TexturesInstalled

			if(this->UseAddmap[wallno])
				ActivateTexture(GL_TEXTURE2_ARB, this->AddmapIDs[wallno], GL_ADD);
			else
				DisableTexture(GL_TEXTURE2_ARB);

			if(this->UseDecals[wallno])
				ActivateTexture(GL_TEXTURE3_ARB, this->DecalIDs[wallno], GL_DECAL);
			else
				DisableTexture(GL_TEXTURE3_ARB);

			ActivateTexture(GL_TEXTURE1_ARB, this->LightmapIDs[wallno], GL_MODULATE);

			glNormal3fv( m.normal.d );

			glBegin(GL_QUADS);
			for(unsigned e=0; e<4; ++e)
			{
				glMultiTexCoord2fARB(GL_TEXTURE0_ARB, width * !((e+2)&2), height * !((e+3)&2) );
				glMultiTexCoord2fARB(GL_TEXTURE1_ARB,     1 * !((e+2)&2),      1 * !((e+3)&2) );
				if(this->UseAddmap[wallno])
					glMultiTexCoord2fARB(GL_TEXTURE2_ARB, 1 * !((e+2)&2),      1 * !((e+3)&2) );
				if(this->UseDecals[wallno])
					glMultiTexCoord2fARB(GL_TEXTURE3_ARB, 1 * !((e+2)&2),      1 * !((e+3)&2) );
				glVertex3fv( m.p[e].d );
			}
			glEnd();
		}
		DisableTexture(GL_TEXTURE2_ARB);
		DisableTexture(GL_TEXTURE1_ARB);
		DisableTexture(GL_TEXTURE0_ARB);
		this->TexturesInstalled = true;
	}

	// These constants control vertical movement:
	const double gravity = -0.011, terminalvelocity = -2.0, jump = 0.18;

	class Actor
	{
	public:
		XYZ<double> camera;  // Where the actor is situated
	public:
		XYZ<double>  dir;    // Where actor is looking (updated from look_angle, y=always zero)
		XYZ<double>   up;    // What is the "up" direction for this actor
	public:
		Actor() : dir {{0,0,0}}, up {{0,-1,0}}
		{
		}
		virtual ~Actor() { }

		template<typename Func>
		void Render(Func& DrawWorld, double FoV, double aspect, double near = 1e-3)
		{
			// Decide upon how the viewport is to be projected.
			glMatrixMode(GL_PROJECTION); // Target matrix: Projection
			glLoadIdentity();            // Reset any transformations
			gluPerspective(FoV, aspect, near, 30.0);

			// Decide upon the manner in which the world is transformed from the
			// perspective of the viewport. In OpenGL, the camera never moves.
			// The world is simply rotated/scaled/shorn around the camera.
			glMatrixMode(GL_MODELVIEW);  // Target matrix: World
			glLoadIdentity();            // Reset any transformations
			gluLookAt(
				camera.d[0],
				camera.d[1],
				camera.d[2],
				camera.d[0] + dir.d[0],
				camera.d[1] + dir.d[1],
				camera.d[2] + dir.d[2],
				up.d[0],
				up.d[1],
				up.d[2]);

			// Enable depth calculations to work on the new frame.
			glClear(GL_DEPTH_BUFFER_BIT);

			// Draw everything that should be rendered.
			DrawWorld(*this);
			
			// Tell OpenGL to render and display stuff.
			glFlush();

		}
	};

	class BlobActor: public Actor
	{
		public:
			double look_angle = 0; // Angle of looking, around the Y axis
			double yaw = 0;        // Angle of aiming, in Y direction, visual effect only

			XYZ<double> fatness; // Fatness of player avatar
			XYZ<double> center;  // Center of the player avatar
			XYZ<double> fluctuation;

		public:
			bool moving;       // Has nonzero velocity?
			bool ground;       // Can jump?
			double move_angle; // Relative to looking-direction, the angle
							   // in which the actor is trying to walk to
			XYZ<double>  vel;  // Actor's current velocity
			int pushing;       // -1 = decelerating, +1 = accelerating, 0 = idle

		public:
			BlobActor():
				fatness {{1,1,1}},
				center  {{0,0,0}},
				moving(true),
				ground(false),
				move_angle(0),
				vel     {{0,0,0}},
				pushing(0){ }

		virtual ~BlobActor() { }
		virtual void Update()
		{
			ground = true;
			if(pushing)
			{
				// Try to push into the looking-towards direction
				const double maxvel = 0.1*(pushing>0), acceleration = (pushing>0 ? 0.2 : 0.1);
				// Which direction we are actively trying to go
				XYZ<double> move_vec = {{1,0,0}};
				Matrix<double> a;
				a.InitRotate( XYZ<double> {{ 0,(look_angle+move_angle)*M_PI/180.0, 0 }} );
				a.Transform(move_vec);
				// Update the current velocity so it slowly approaches
				// either the desired direction, or halt. Only update
				// the horizontal axis though; the vertical is handled
				// entirely by gravity.
				vel.d[0] = vel.d[0] * (1-acceleration) + move_vec.d[0] * (acceleration * maxvel);
				vel.d[2] = vel.d[2] * (1-acceleration) + move_vec.d[2] * (acceleration * maxvel);
				moving = true;
			}
			if(moving)
			{
				// For the purposes of collision testing,
				// the player is an axis-aligned ellipsoid.
				// We do collision tests in two phases. First horizontal, then
				// vertical. Attempting to do both at same time would make it
				// too difficult to decide reliably when the player can jump.
				ground = false;
				double yvel = std::max(vel.d[1] + gravity, terminalvelocity);
				vel.d[1] = 0.0;
				camera -= center;
				CollideAndSlide(camera, vel, fatness, map);
				if(CollideAndSlide(camera, {{0,yvel,0}}, fatness, map))
				{
					if(yvel < 0) ground = true;
					yvel = 0.0;
				}
				vel.d[1] = yvel;
				camera += center;
				if(vel.Squared() < 1e-9)
				{
					vel *= 0.;
					pushing = 0;
					if(ground) moving = false;
				}
			}
			if(pushing)
				pushing = -1;

			double yaw_angle = yaw + vel.d[1] * 35.;
			dir = {{1, 0,0}};
			up  = {{0,-1,0}};
			Matrix<double> a;
			a.InitRotate( XYZ<double> {{ 0,look_angle*M_PI/180.0, yaw_angle*M_PI/180.0 }} );
			a.Transform(dir);
			a.Transform(up);
		}

		enum SignalType
		{
			sig_push,
			sig_jump,
			sig_aim
		};
		void MovementSignal(SignalType type, int param1=0, int param2=0)
		{
			switch(type)
			{
				case sig_push:
					pushing    = 1;
					move_angle = param1;
					break;
				case sig_jump:
					if(ground) { moving = true; vel.d[1] += jump; }
					break;
				case sig_aim:
					look_angle -= param1;
					yaw        -= param2;
					if(yaw < -90) yaw = -90;
					if(yaw >  90) yaw =  90; // defer too aggressive tilts
			}
		}
		void Fluctuate()
		{
			double fatsize = fatness.Len();
			fatness += fluctuation;
			for(unsigned c=0; c<3; ++c)
			{
				fluctuation.d[c] += ((rand()/double(RAND_MAX))-0.5)*2.0*0.3;
				if(fluctuation.d[c] < -0.5) fluctuation.d[c] = -0.3;
				if(fluctuation.d[c] >  0.5) fluctuation.d[c] =  0.3;
				if(fatness.d[c] < 0.4) fatness.d[c] = 0.4;
				if(fatness.d[c] > 1.0) fatness.d[c] = 1.0;
			}
			fatness *= fatsize / fatness.Len();
		}
	};

	#define USE_FB 0

	int cpc_mesatest::mesatest_main(unsigned int *Buffer)
	{

		const unsigned PW = std::min(W, 128u), PH = std::min(H, 128u);
		
		#if USE_OSMESA
			// OSMesaContext om  = OSMesaCreateContext(OSMESA_RGBA, NULL);
			OSMesaContext om  = OSMesaCreateContextExt( GL_RGBA, 32, 0, 0, NULL );
			
			OSMesaMakeCurrent(om, Buffer, GL_UNSIGNED_BYTE, W, H);
		#else
		#endif
		
	
		Init();

		////////
		glEnable(GL_DEPTH_TEST);
		glEnable(GL_CULL_FACE); glCullFace(GL_BACK);
		glHint(GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST);
		glHint(GL_LINE_SMOOTH_HINT, GL_NICEST);
		glHint(GL_POLYGON_SMOOTH_HINT, GL_NICEST);

		{GLfloat v[4]={0,0,0,0}; glLightModelfv(GL_LIGHT_MODEL_AMBIENT, v);}

		BlobActor player;
		player.fatness = {{ 0.2, 0.6, 0.2  }};   // Shape of the ellipsoid
		player.center  = {{ 0,   0.3, 0    }};   // representing the actor
		player.camera  = {{ 4,     3, 7.25 }};   // Location thereof
		player.look_angle = 170; player.yaw = 10;// Where it is facing

		std::list<BlobActor> blobs;

		Actor portals[2];
		portals[0].camera = {{2,2,6}};
		portals[1].camera = {{2,4,6}};
		GLuint portal_textures[2];
		glGenTextures(2, portal_textures);
	#if USE_FB
		GLuint frame_buffers[2], portal_buffers[2];
		glGenFramebuffersEXT(2, frame_buffers);
		glGenRenderbuffersEXT(2, portal_buffers);
	#endif
		for(int p=0; p<2; ++p)
		{
			InstallTexture(0, PW,PH, portal_textures[p],
						   GL_RGB,GL_FLOAT, GL_LINEAR, GL_CLAMP_TO_EDGE);
	#if USE_FB
			glBindFramebufferEXT(GL_FRAMEBUFFER_EXT, frame_buffers[p]);
			glBindRenderbufferEXT(GL_RENDERBUFFER_EXT, portal_buffers[p]);
			glRenderbufferStorageEXT(GL_RENDERBUFFER_EXT, GL_RGB, PW,PH);
			glBindRenderbufferEXT(GL_RENDERBUFFER_EXT, 0);
			glFramebufferTexture2DEXT(GL_FRAMEBUFFER_EXT, GL_COLOR_ATTACHMENT0_EXT,
									  GL_TEXTURE_2D, portal_textures[p], 0);
			glFramebufferRenderbufferEXT(GL_FRAMEBUFFER_EXT, GL_COLOR_ATTACHMENT0_EXT,
										 GL_RENDERBUFFER_EXT, portal_buffers[p]);
			glCheckFramebufferStatusEXT(GL_FRAMEBUFFER_EXT);
			glBindFramebufferEXT(GL_FRAMEBUFFER_EXT, 0);
	#endif
		}

		auto RenderWorld = [&] (Actor& exclude_actor)
		{
			// Create white spheres representing all lightsources.
			DisableTexture(GL_TEXTURE0_ARB);
			DisableTexture(GL_TEXTURE1_ARB);
			DisableTexture(GL_TEXTURE2_ARB);
			for(const auto& l : lights)
			{
				glTranslated( l.pos.d[0], l.pos.d[1], l.pos.d[2] );
				GLUquadric* qu = gluNewQuadric();
				 gluSphere(qu, 0.3f, 16, 16);
				gluDeleteQuadric(qu);
				glTranslated( -l.pos.d[0], -l.pos.d[1], -l.pos.d[2] );
			}
			if(&exclude_actor != &player)
			{
				// For now, this blue sphere represents the player as well.
				glColor3f(.4,.4,.1);
				glPushMatrix();
				 glTranslated( player.camera.d[0], player.camera.d[1], player.camera.d[2] );
				 glTranslated( -player.center.d[0], -player.center.d[1], -player.center.d[2] );
				 glScaled(player.fatness.d[0],  player.fatness.d[1],  player.fatness.d[2]);
				 GLUquadric* qu = gluNewQuadric();
				  gluSphere(qu, 1.0, 16, 16);
				 gluDeleteQuadric(qu);
				glPopMatrix();
				glColor3f(1,1,1);
			}
			for(auto& blob: blobs)
			{
				// Blobs are also blue.
				glColor3f(1,.2,.1);
				glPushMatrix();
				 glTranslated( blob.camera.d[0], blob.camera.d[1], blob.camera.d[2] );
				 glTranslated( -blob.center.d[0], -blob.center.d[1], -blob.center.d[2] );
				 glScaled(blob.fatness.d[0],  blob.fatness.d[1],  blob.fatness.d[2]);
				 GLUquadric* qu = gluNewQuadric();
				  gluSphere(qu, 1.0, 16, 16);
				 gluDeleteQuadric(qu);
				glPopMatrix();
				glColor3f(1,1,1);
			}
			for(int p=0; p<2; ++p)
				if(&exclude_actor != &portals[p])
				{
					// Render this portal
					ActivateTexture(GL_TEXTURE0_ARB, portal_textures[p], 0);
					XYZ<GLfloat> v = portals[p].dir;
					glNormal3fv( v.d ); // Direction where the portal is facing

					// The four corner points are made by rotating
					// the portal's "up" vector around its "dir"
					// at 90 degree steps.
					Matrix<double> a;
					glBegin(GL_QUADS);
					for(unsigned e=0; e<4; ++e)
					{
						glMultiTexCoord2fARB(GL_TEXTURE0_ARB, 1 * !!((e+0)&2), 1 * !!((e+3)&2) );
						a.InitAxisRotate(portals[p].dir, (e*90 + 45)*-M_PI/180.0);
						v = portals[p].up;
						a.Transform(v);
						v *= 0.75;
						v += portals[p].camera;
						glVertex3fv(v.d);
					}
					glEnd();
				}

			// ExtractLevelMap();
		};

		// Main loop
		for(;;)
		{
			const double fov = 90.0;

			player.Update();

	#if 0
			for(auto j = blobs.end(), i = blobs.begin(); i != j; )
			{
				auto& blob = *i;
				blob.vel *= 0.99; // Air resistance
				blob.vel.d[1] += gravity;
				auto camera_backup = blob.camera;
				if(CollideAndSlide(blob.camera, blob.vel, blob.fatness, map))
				{
					// If the blob hit something, try to find out what it hit
					// This may not always succeed (if it was a bracing hit).
					HitRec hit = IntersectRay(camera_backup, blob.vel.Normalized(), map);
					if(hit.set())
					{
						// Found out what it hit.
						// Create a paint blotch.
						if(CreatePaintBlotch(hit))
						{
							auto k = i++; blobs.erase(k);
							continue;
						}
					}
				}
				blob.Fluctuate();
				++i;
			}
	#endif

			glViewport(0,0, PW,PH);
			
			for(int recursion=0; recursion<1; ++recursion)
			{
				// Render both portal's point of view
				for(int p=0; p<2; ++p)
				{
					int seen = p, vista = 1-p;
					Actor& seen_portal = portals[seen];   // Which portal presents the view
					Actor& vista_portal = portals[vista]; // Which portal's view is seen

					XYZ<double> eye_to_seen_portal = seen_portal.camera - player.camera;
					double eye_to_seen_distance = eye_to_seen_portal.Len();
					eye_to_seen_portal /= eye_to_seen_distance; // Normalize

					// Figure out the angle between the seen_portal's normal&up and eye_to_seen_portal,
					/* double dir_portaldir_cosine = */eye_to_seen_portal.Dot( seen_portal.dir );
					/* double dir_portalup_cosine  = */ eye_to_seen_portal.Dot( seen_portal.up  );

					// Create a new eye-beam by translating that angle to vista_portal's normal&up.

					// FIXME: FIGURE OUT HOW TO TRANSLATE THE VIEW!

					// TODO: Add such projection that all camera rays are cast parallel to
					// a viewing plane that is larger as audience comes nearer.
					double distance = (portals[seen].camera - player.camera).Len();

					double portalfov = 180.0 / (1+distance);

					// fprintf(stderr, "Portal %d at <%.5f,%.5f,%.5f>, dir=<%.5f,%.5f,%.5f>, up=<%.5f,%.5f,%.5f>, cos=%.5f\n",
						// p,
						// seen_portal.camera.d[0],
						// seen_portal.camera.d[1],
						// seen_portal.camera.d[2],
						// seen_portal.dir.d[0],
						// seen_portal.dir.d[1],
						// seen_portal.dir.d[2],
						// seen_portal.up.d[0],
						// seen_portal.up.d[1],
						// seen_portal.up.d[2],
						// seen_portal.dir.Dot(seen_portal.up) );

	#if USE_FB
					glBindFramebufferEXT(GL_FRAMEBUFFER_EXT, frame_buffers[seen]);
	#else
					glPushAttrib(GL_COLOR_BUFFER_BIT | GL_PIXEL_MODE_BIT);
					glDrawBuffer(GL_BACK);
					glReadBuffer(GL_BACK);
	#endif

					vista_portal.Render(RenderWorld, portalfov, 1.0 / 1.0);

	#if USE_FB
					ActivateTexture(GL_TEXTURE0_ARB, portal_textures[seen], 0);
					glGenerateMipmapEXT(GL_TEXTURE_2D);
	#else
					ActivateTexture(GL_TEXTURE0_ARB, portal_textures[seen], 0);
					glCopyTexSubImage2D(GL_TEXTURE_2D, 0,0,0,0,0, PW,PH);
					glGenerateMipmapEXT(GL_TEXTURE_2D);
					glPopAttrib();
	#endif
				}
			}

	#if USE_FB
			glBindFramebufferEXT(GL_FRAMEBUFFER_EXT, 0);
	#endif

			glViewport(0,0, W,H);

			player.Render(RenderWorld, fov, 16.0 / 9.0); // Render player's point of view
	#if USE_OSMESA
	
			Render();
	#else
			SDL_GL_SwapBuffers();
	#endif

			 while(kbhit())
				switch(getch())
				{
					case 'p': case 27: case 'P': goto done;
					case 'z': player.MovementSignal(BlobActor::sig_push, 0);   break; // forward
					case 's': player.MovementSignal(BlobActor::sig_push, 180); break; // backward
					case 'q': player.MovementSignal(BlobActor::sig_push,  90); break; // strafe left
					case 'd': player.MovementSignal(BlobActor::sig_push, -90);  break; // strafe right
					case ' ': player.MovementSignal(BlobActor::sig_jump); break; // jump
					case 'b':
					{
						BlobActor blob;
						blob.fatness = {{0.45, 0.45, 0.45}};
						blob.camera  = player.camera + player.dir * 0.2;
						blob.dir     = player.dir;
						blob.vel     = player.dir * 0.2 + player.vel;
						blobs.push_back(blob);
						break;
					}
				}

				// Get mouse relative position (since last poll) and update view
			 __dpmi_regs regs = { };
			regs.x.ax = 0xB;
			__dpmi_int(0x33, &regs);
			player.MovementSignal(BlobActor::sig_aim, (short) regs.x.cx, (short) regs.x.dx );
			// Get mouse button information
			for(int button=0; button<2; ++button)
			{
				regs.x.ax = 0x5;
				regs.x.bx = button;
				__dpmi_int(0x33, &regs);
				if(regs.x.bx)
				{
					// Fire a portal
					Actor& portal = portals[button];
					HitRec r = IntersectRay(player.camera, player.dir, map);
					portal.dir    = map[ r.wallno ].normal;
					portal.camera = r.hit + portal.dir * 1e-4;
					// Figure out where the "up" vector for the portal should go.
					portal.up = portal.dir.Cross(player.dir.Cross(player.up)).Normalized();
					portal.up *= -1.0;
					//portal.up = (player.dir.Cross(player.up)).Cross(portal.dir).Normalized();
				}
			} 

		}
	done:;
		Close();
		#if USE_OSMESA
			OSMesaDestroyContext(om);
		#endif
		return 0;
	}
}