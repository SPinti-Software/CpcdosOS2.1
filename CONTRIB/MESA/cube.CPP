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
	
	
	// ----------------------------------------------------------
	// Function Prototypes
	// ----------------------------------------------------------
	void display();
	void specialKeys();
	 
	// ----------------------------------------------------------
	// Global Variables
	// ----------------------------------------------------------
	double rotate_y=0; 
	double rotate_x=0;
	 
	// ----------------------------------------------------------
	// display() Callback function
	// ----------------------------------------------------------
	void display(){
	 
	  //  Clear screen and Z-buffer
	  glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT);
	 
	  // Reset transformations
	  glLoadIdentity();
	 
	  // Other Transformations
	  // glTranslatef( 0.1, 0.0, 0.0 );      // Not included
	  // glRotatef( 180, 0.0, 1.0, 0.0 );    // Not included
	 
	  // Rotate when user changes rotate_x and rotate_y
	  glRotatef( rotate_x, 1.0, 0.0, 0.0 );
	  glRotatef( rotate_y, 0.0, 1.0, 0.0 );
	 
	  // Other Transformations
	  // glScalef( 2.0, 2.0, 0.0 );          // Not included
	 
	  //Multi-colored side - FRONT
	  glBegin(GL_POLYGON);
	 
	  glColor3f( 1.0, 0.0, 0.0 );     glVertex3f(  0.5, -0.5, -0.5 );      // P1 is red
	  glColor3f( 0.0, 1.0, 0.0 );     glVertex3f(  0.5,  0.5, -0.5 );      // P2 is green
	  glColor3f( 0.0, 0.0, 1.0 );     glVertex3f( -0.5,  0.5, -0.5 );      // P3 is blue
	  glColor3f( 1.0, 0.0, 1.0 );     glVertex3f( -0.5, -0.5, -0.5 );      // P4 is purple
	 
	  glEnd();
	 
	  // White side - BACK
	  glBegin(GL_POLYGON);
	  glColor3f(   1.0,  1.0, 1.0 );
	  glVertex3f(  0.5, -0.5, 0.5 );
	  glVertex3f(  0.5,  0.5, 0.5 );
	  glVertex3f( -0.5,  0.5, 0.5 );
	  glVertex3f( -0.5, -0.5, 0.5 );
	  glEnd();
	 
	  // Purple side - RIGHT
	  glBegin(GL_POLYGON);
	  glColor3f(  1.0,  0.0,  1.0 );
	  glVertex3f( 0.5, -0.5, -0.5 );
	  glVertex3f( 0.5,  0.5, -0.5 );
	  glVertex3f( 0.5,  0.5,  0.5 );
	  glVertex3f( 0.5, -0.5,  0.5 );
	  glEnd();
	 
	  // Green side - LEFT
	  glBegin(GL_POLYGON);
	  glColor3f(   0.0,  1.0,  0.0 );
	  glVertex3f( -0.5, -0.5,  0.5 );
	  glVertex3f( -0.5,  0.5,  0.5 );
	  glVertex3f( -0.5,  0.5, -0.5 );
	  glVertex3f( -0.5, -0.5, -0.5 );
	  glEnd();
	 
	  // Blue side - TOP
	  glBegin(GL_POLYGON);
	  glColor3f(   0.0,  0.0,  1.0 );
	  glVertex3f(  0.5,  0.5,  0.5 );
	  glVertex3f(  0.5,  0.5, -0.5 );
	  glVertex3f( -0.5,  0.5, -0.5 );
	  glVertex3f( -0.5,  0.5,  0.5 );
	  glEnd();
	 
	  // Red side - BOTTOM
	  glBegin(GL_POLYGON);
	  glColor3f(   1.0,  0.0,  0.0 );
	  glVertex3f(  0.5, -0.5, -0.5 );
	  glVertex3f(  0.5, -0.5,  0.5 );
	  glVertex3f( -0.5, -0.5,  0.5 );
	  glVertex3f( -0.5, -0.5, -0.5 );
	  glEnd();
	 
	  glFlush();

	}
	 
	// ----------------------------------------------------------
	// specialKeys() Callback Function
	// ----------------------------------------------------------
	void specialKeys( ) {
		while(kbhit())
			switch(getch())
			{
				// case 'p': case 27: case 'P':
				case 'q': rotate_y += 5; break;
				case 'd': rotate_y -= 5; break;
				case 'z': rotate_x += 5; break;
				case 's': rotate_y -= 5; break;
			}

	 
	}

	int cpc_mesatest::mesatest_main(unsigned int *Buffer)
	{

		OSMesaContext om  = OSMesaCreateContextExt( GL_RGBA, 16, 0, 0, NULL );
		
		OSMesaMakeCurrent(om, Buffer, GL_UNSIGNED_BYTE, W, H);


		glEnable(GL_DEPTH_TEST);
		glEnable(GL_CULL_FACE); glCullFace(GL_BACK);
		glHint(GL_PERSPECTIVE_CORRECTION_HINT, GL_FASTEST);
		glHint(GL_LINE_SMOOTH_HINT, GL_FASTEST);
		glHint(GL_POLYGON_SMOOTH_HINT, GL_FASTEST);
		
		{GLfloat v[4]={0,0,0,0}; glLightModelfv(GL_LIGHT_MODEL_AMBIENT, v);}
 

		while(1)
		{
			display();
			specialKeys();

			cpc_Blitter(ID_contexte);
			
			rotate_y += 0.5;	
			rotate_x += 0.05;		

		}	
	}
}