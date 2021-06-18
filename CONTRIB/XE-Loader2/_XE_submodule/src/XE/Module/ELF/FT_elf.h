/*
 * Display datatype maintaining display specific data.
 */
 
 
//#define DefaultRootWindow(dpy) 	(ScreenOfDisplay(dpy,DefaultScreen(dpy))->root)
//#define DefaultScreen(dpy) 	(((_XPrivDisplay)dpy)->default_screen)
//#define ScreenOfDisplay(dpy, scr)(&((_XPrivDisplay)dpy)->screens[scr])



 //!FILE * fopen ( const char * filename, const char * mode )
 FILE * impl_fopen64 ( const char * filename, const char * mode ){
	showfunc("fopen64( filename: %p, mode: %s )", filename,mode);
	return fopen(filename, mode);
 }

 


 #define pthread_t void 
 #define pthread_attr_t void 
//! int pthread_create(pthread_t *thread, const pthread_attr_t *attr, void *(*start_routine) (void *), void *arg)
int impl_pthread_create(pthread_t* thread, const pthread_attr_t* attr, void *(*start_routine) (void *), void *arg){
	showfunc("pthread_create( attr: %p, start_routine: %p, arg: %p)", attr, start_routine, arg);

	//#if defined(Func_Win) || defined(USE_WinThread)
//DWORD   dwThreadIdArray = 0;
	
		uintptr_t thdl = 0;
  //     PMYDATA   pDataArray = (PMYDATA) HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(MYDATA));
		/*		
	if ( thdl = (uintptr_t)CreateThread(NULL, 0,(LPTHREAD_START_ROUTINE)start_routine,(LPVOID)arg,0,0) ){
         GetLastError();
    }*/
	
	return XeGI_CreateThread((XEGI_THREAD_START_ROUTINE)start_routine,0,(LPVOID)arg);

	//#endif
	//while(1){Sleep(1);};
}

//!int getopt(int argc, char * const argv[], const char *optstring)
int impl_getopt(int argc, char * const argv[], const char *optstring){
	showfunc("getopt( argc: %d, argv: %p, optstring: %p)", argc, argv, optstring);
	//TODO
	return -1;//f all command-line options have been parsed, then getopt() returns -1.
}

#define time_t_ uint64_t
#define clockid_t_ int
struct timespec_ {
        time_t_   tv_sec;        /* seconds */
        long     tv_nsec;       /* nanoseconds */
};
struct timespec_ _timespec = {};
//|int clock_gettime(clockid_t clk_id, struct timespec_ *tp)
int impl_clock_gettime(clockid_t_ clk_id, struct timespec_ *tp) {
	showfunc("clock_gettime( clk_id: %d, timespec_: %p)", clk_id, tp);
	
	//Simulate 1 seconde?
	_timespec.tv_sec+=1;
	_timespec.tv_nsec+=0;
	tp->tv_sec  = _timespec.tv_sec;
	tp->tv_nsec = _timespec.tv_nsec;
	
	return 0; //0 for success
}


#define Drawable uint32_t
#define useconds_t uint32_t
#define XVisualInfo void
#define KeySym void
#define Visual void
#define Depth void
#define XExtData void
#define key_t int


#define Window uint32_t
#define GC uint32_t
#define Colormap uint32_t
#define Pixmap uint32_t
#define Status int
#define XShmSegmentInfo void
typedef unsigned long int XID;
#define XPointer void*

typedef  struct {
	XExtData *ext_data;	/* hook for extension to hang data */
	struct _XDisplay *display;/* back pointer to display structure */
	Window root;		/* Root window id. */
	int width, height;	/* width and height of screen */
	int mwidth, mheight;	/* width and height of  in millimeters */
	int ndepths;		/* number of depths possible */
	Depth *depths;		/* list of allowable depths on the screen */
	int root_depth;		/* bits per pixel */
	Visual *root_visual;	/* root visual */
	GC default_gc;		/* GC for the root root visual */
	Colormap cmap;		/* default color map */
	unsigned long white_pixel;
	unsigned long black_pixel;	/* White and Black pixel values */
	int max_maps, min_maps;	/* max and min color maps */
	int backing_store;	/* Never, WhenMapped, Always */
	bool save_unders;	
	long root_input_mask;	/* initial root input mask */
} Screen;


typedef struct _XDisplay {
   // XExtData* ext_data;  
    void* ext_data;              /* hook for extension to hang data */
    struct _XDisplay *next;          /* next open Display on list */
    int fd;                          /* network socket */
    int lock;                        /* is someone in critical section? */
    int proto_major_version;         /* major version of server's X protocol */
    int proto_minor_version;         /* minor version of servers X protocol */
    char *vendor;                    /* vendor of the server hardware */
    long resource_base;              /* resource ID base */
    long resource_mask;              /* resource ID mask bits */
    long resource_id;                /* allocator current ID */
    int resource_shift;              /* allocator shift to correct bits */
    XID (*resource_alloc)();         /* allocator function */
    int byte_order;                  /* screen byte order, LSBFirst, MSBFirst */
    int bitmap_unit;                 /* padding and data requirements */
    int bitmap_pad;                  /* padding requirements on bitmaps */
    int bitmap_bit_order;            /* LeastSignificant or MostSignificant */
    int nformats;                    /* number of pixmap formats in list */
    //ScreenFormat *pixmap_format;     /* pixmap format list */
    void*pixmap_format;     /* pixmap format list */
    int vnumber;                     /* Xlib's X protocol version number */
    int release;                     /* release of the server */
    struct _XSQEvent *head, *tail;   /* input event queue */
    int qlen;                        /* length of input event queue */
    int last_request_read;           /* sequence number of last event read */
    int request;                     /* sequence number of last request */
    char *last_req;                  /* beginning of last request, or dummy */
    char *buffer;                    /* output buffer starting address */
    char *bufptr;                    /* output buffer index pointer */
    char *bufmax;                    /* output buffer maximum+1 address */
    unsigned max_request_size;       /* maximum number 32 bit words in request*/
    struct _XrmHashBucketRec *db;
    int (*synchandler) ();           /* synchronization handler */
    char *display_name;              /* "host:display" string used on this connect*/
    int default_screen;              /* default screen for operations */
    int nscreens;                    /* number of screens on this server*/
    Screen *screens;                 /* pointer to list of screens */
    int motion_buffer;               /* size of motion buffer */
    Window current;                  /* for use internally for Keymap notify */
   
    int min_keycode;                 /* minimum defined keycode */
    int max_keycode;                 /* maximum defined keycode */
    KeySym *keysyms;                 /* this server's keysyms */
  //  XModifierKeymap *modifiermap;    /* this server's modifier keymap */
    void* modifiermap;    /* this server's modifier keymap */
    int keysyms_per_keycode;         /* number of rows */
    char *xdefaults;                 /* contents of defaults from server */
    char *scratch_buffer;            /* place to hang scratch buffer */
    unsigned long scratch_length;    /* length of scratch buffer */
    int ext_number;                  /* extension number on this display */
 // _XExtension*ext_procs;         
   void*ext_procs;            /* extensions initialized on this display */
    bool (*event_vec[128])();        /* vector for wire to event */
    Status (*wire_vec[128])();       /* vector for event to wire */
} Display;

Screen screen = {};
Display display = {.screens=&screen};

//!Display* XOpenDisplay(char* display_name)
Display* impl_XOpenDisplay(char* display_name){
	showfunc("XOpenDisplay( display_name: %s )", display_name);
	
	return &display;
}
Status  impl_XMatchVisualInfo(Display* display, int screen, int depth, int class,  XVisualInfo* vinfo_return){
	showfunc("XMatchVisualInfo( display: %p, screen: %d, depth: %d: class: %d, vinfo_return: %p )", display, screen, depth, class, vinfo_return);
	
	return 0;
}  
//!Colormap XCreateColormap( Display *, Window w, Visual * visual, int alloc)
Colormap impl_XCreateColormap( Display* d, Window w, Visual* visual, int alloc){
	showfunc("XCreateColormap( display: %p, w: %d, visual: %p: alloc: %d)", d, w, visual, alloc);
	return 0;
}
#define XSetWindowAttributes void
Window impl_XCreateWindow( Display* display, Window parent, int x, int y, unsigned int width, unsigned int height,  unsigned int border_width, int depth, unsigned int class, Visual* visual, unsigned long valuemask, XSetWindowAttributes* attributes){
	showfunc("XCreateWindow( parent: %p, x: %d,  y,: %p, width: %d, height,: %d, border_width: %d, depth: %d)", parent, x, y, width, height, border_width, depth);			
	///Window win = {};
	return 0;
}

typedef struct {
	long flags;
	bool input;
	int initial_state;
	Pixmap icon_pixmap;
	Window icon_window;
	int icon_x, icon_y;
	Pixmap icon_mask;
	XID window_group;
} XWMHints;
XWMHints xwmHints = {};
//!XWMHints *XAllocWMHints(void)
XWMHints* impl_XAllocWMHints(void){
	showfunc("XAllocWMHints( )", "");			
	return &xwmHints;
}

typedef struct _XImage {
    int width;
	int height;		/* size of image */
    int xoffset;		/* number of pixels offset in X direction */
    int format;			/* XYBitmap, XYPixmap, ZPixmap */
    char *data;			/* pointer to image data */
    int byte_order;		/* data byte order, LSBFirst, MSBFirst */
    int bitmap_unit;		/* quant. of scanline 8, 16, 32 */
    int bitmap_bit_order;	/* LSBFirst, MSBFirst */
    int bitmap_pad;		/* 8, 16, 32 either XY or ZPixmap */
    int depth;			/* depth of image */
    int bytes_per_line;		/* accelarator to next line */
    int bits_per_pixel;		/* bits per pixel (ZPixmap) */
    unsigned long red_mask;	/* bits in z arrangment */
    unsigned long green_mask;
    unsigned long blue_mask;
    XPointer obdata;		/* hook for the object routines to hang on */
    struct funcs {		/* image manipulation routines */
	struct _XImage *(*create_image)(
		struct _XDisplay* /* display */,
		Visual*		/* visual */,
		unsigned int	/* depth */,
		int		/* format */,
		int		/* offset */,
		char*		/* data */,
		unsigned int	/* width */,
		unsigned int	/* height */,
		int		/* bitmap_pad */,
		int		/* bytes_per_line */);
	int (*destroy_image)        (struct _XImage *);
	unsigned long (*get_pixel)  (struct _XImage *, int, int);
	int (*put_pixel)            (struct _XImage *, int, int, unsigned long);
	struct _XImage *(*sub_image)(struct _XImage *, int, int, unsigned int, unsigned int);
	int (*add_pixel)            (struct _XImage *, long);
	} f;
} XImage;
XImage ximage = {.bytes_per_line=800*4,  .height= 600};

//!XImage *XShmCreateImage (Display *display, Visual* visual, unsigned int depth, int format, char *data, XShmSegmentInfo *shminfo, unsigned int width, height){
XImage* impl_XShmCreateImage(Display *display, Visual* visual, unsigned int depth, int format, char *data, XShmSegmentInfo *shminfo, unsigned int width, unsigned int  height){
	showfunc("XShmCreateImage( display: %p, visual: %p, depth: %d, format: %d, data: %p, shminfo,: %p, width: %d, height: %d )", display, visual,  depth, format, data, shminfo, width, height);			

//bytes_per_lines
//height
		aContext_count++; //Important: Skip the zero index (NULL)
		int idx = aContext_count;
		aContext[idx].idx = idx;
		aContext[idx].width = width;
		aContext[idx].height = height;
		#ifdef ShowPixView
		aContext[idx].hwnd_View = pixView_createWindow(&aContext[idx]);
		#endif
		showinf("PixView= idx: %d, height: %d, width: %d", idx,  aContext[idx].height,  aContext[idx].width);
		showinf("create hwnd_View( hwnd_View: %d, idx: %d, height: %d, width: %d )", aContext[idx].hwnd_View,  idx,  aContext[idx].height,  aContext[idx].width );
	
	
	return &ximage;
}
	

//!Bool XShmPutImage(Display *display, Drawable d, GC gc, XImage *image, int src_x, src_y, dest_x, dest_y, unsigned int width, height, bool send_event){
bool impl_XShmPutImage(Display *display, Drawable d, GC gc, XImage* image, int src_x, int src_y, int dest_x, int dest_y, unsigned int width, unsigned int  height, bool send_event){
	showfunc("XShmPutImage( display: %p, d: %d, gc: %d, image: %p, src_x: %d, src_y: %d, dest_x: %d, dest_y: %d, width: %d, height: %d,  send_event: %d)", display, d, gc, image, src_x, src_y, dest_x, dest_y, width, height, send_event);
	
	int idx = 1; //HDC is same as HWND (not necessary to dissociate them)
	return Blit_context(idx, (uint32_t*)image->data, width); //->heighT: number of scan lines copied
}






//!Bool XTranslateCoordinates( Display* display, Window src_w, int dest_w, int src_x, int src_y, int* dest_x_return, int* dest_y_return, Window* child_return)
bool impl_XTranslateCoordinates( Display* display, Window src_w, int dest_w, int src_x, int src_y, int* dest_x_return, int* dest_y_return, Window* child_return){
	showfunc("XTranslateCoordinates( display: %p, ...)", display);			
	
	return true;
}


static void* aShmget[20] = {};
static int aShmget_idx = 0;
//!int shmget(key_t key, size_t size, int shmflg){
int impl_shmget(key_t key, size_t size, int shmflg){
	//TODO: size rounded up to a multiple of PAGE_SIZE
	if(size == 0){size = 4096;} //temp

	showfunc("shmget( key: %d, size: %d, shmflg: %d)", key, size, shmflg);		
	aShmget[aShmget_idx] = (void*)_malloc(size, char);
	aShmget_idx++;
	return aShmget_idx-1;
}
//!void *shmat(int shmid, const void *shmaddr, int shmflg)
void* impl_shmat(int shmid, const void *shmaddr, int shmflg){
	showfunc("shmat( shmid: %d, shmaddr: %p, shmflg: %d)", shmid, shmaddr, shmflg);		
	return aShmget[shmid];
//	return (void*)_malloc(4096*4096, char); //TODO
	
}

//!int XPending(Display*display)
int impl_XPending(Display*display){
	showfunc("XPending( display: %p", display);	
	return 0;
}

//!unsigned int sleep(unsigned int seconds)
unsigned int impl_sleep(unsigned int seconds){
	showfunc_opt("sleep( seconds: %d)", seconds);
	XeGI_Sleep(seconds*1000);
}
//!int usleep(useconds_t useec)
int impl_usleep(useconds_t usec){
	showfunc_opt("usleep( usec: %d)", usec);
	XeGI_Sleep(usec/1000);
}

//extern char **__environ;

/*
//!void fini(void)
void fini(void){
	showfunc("fini (global destructor)", "");
}
*/

fn int impl_libc_start_main(int (*main)(int, char**, char**), int argc, char** argv, void (*init) (void), void (*fini) (void), void (*rtld_fini) (void), void (* stack_end)){
	showfunc("_libc_start_main( main: %p, argc: %d,  argv: %p)", main, argc, argv);

/*
  int result;
  __libc_multiple_libcs = &_dl_starting_up && !_dl_starting_up;
  _dl_relocate_static_pie ();
  
  char **ev = &argv[argc + 1];
  __environ = ev;

  // Store the lowest stack address.  This is done in ld.so if this is the code for the DSO. 
  __libc_stack_end = stack_end;

//Starting from binutils-2.23, the linker will define the
// magic symbol __ehdr_start to point to our own ELF header
// if it is visible in a segment that also includes the phdrs.
// So we can set up _dl_phdr and _dl_phnum even without any
// information from auxv.  
  extern const ElfW(Ehdr) __ehdr_start
__attribute__ ((weak, visibility ("hidden")));
  if (&__ehdr_start != NULL)
	{
	  assert (__ehdr_start.e_phentsize == sizeof *GL(dl_phdr));
	  GL(dl_phdr) = (const void *) &__ehdr_start + __ehdr_start.e_phoff;
	  GL(dl_phnum) = __ehdr_start.e_phnum;
	}

  // Initialize very early so that tunables can use it. 
  __libc_init_secure ();

  __tunables_init (__environ);

  ARCH_INIT_CPU_FEATURES ();

  //Perform IREL{,A} relocations.  
  ARCH_SETUP_IREL ();

  //The stack guard goes into the TCB, so initialize it early. 
  ARCH_SETUP_TLS ();

  //In some architectures, IREL{,A} relocations happen after TLS setup in
  //   order to let IFUNC resolvers benefit from TCB information, e.g. powerpc's
   //  hwcap and platform fields available in the TCB.  
  ARCH_APPLY_IREL ();

  //Set up the stack checker's canary.
  uintptr_t stack_chk_guard = _dl_setup_stack_chk_guard (_dl_random);

  __stack_chk_guard = stack_chk_guard;


  // Initialize libpthread if linked in. 
  if (__pthread_initialize_minimal != NULL)
    __pthread_initialize_minimal ();

  // Set up the pointer guard value. 
  uintptr_t pointer_chk_guard = _dl_setup_pointer_guard (_dl_random,
							 stack_chk_guard);

  __pointer_chk_guard_local = pointer_chk_guard;

  //Register the destructor of the dynamic linker if there is any. 
  if (__glibc_likely (rtld_fini != NULL))
    __cxa_atexit ((void (*) (void *)) rtld_fini, NULL, NULL);


// Call the initializer of the libc.  This is only needed here if we
//  are compiling for the static library in which case we haven't
// run the constructors in `_dl_start_user'. 
  __libc_init_first (argc, argv, __environ);

  //Register the destructor of the program, if any. 
  if (fini)
    __cxa_atexit ((void (*) (void *)) fini, NULL, NULL);

// Some security at this point.  Prevent starting a SUID binary where
// the standard file descriptors are not opened.  We have to do this
// only for statically linked applications since otherwise the dynamic
// loader did the work already.  
  if (__builtin_expect (__libc_enable_secure, 0))
    __libc_check_standard_fds ();

  // Call the initializer of the program, if any. 

  if (init)
    (*init) (argc, argv, __environ MAIN_AUXVEC_PARAM);
*/
	//argc = 1;
	//argv = (char *[]){"programName", "para1", "para2", "para3", NULL};



  //Register the destructor of the program, if any. 
 // if (fini) __cxa_atexit((void (*) (void *)) fini, NULL, NULL);


   argv = (char *[]){"progName", "navy.img", "-p0", "navy.img", NULL};

    char **p = argv;
    argc = 0;
    while (*p++ != NULL) {
        argc++;
    }
	_printl("Args:");
    for (int i = 0; i < argc; i++) {
        _printl("argv[%d] = %s", i, argv[i]);
    }
	_printl("----");


	char* env= "Test";
	int result = main(argc, argv, &env);
	_printl("---END---");
	return result;
}
 
 
 //!int usleep(useconds_t useec)
void impl_cxa_finalize(void* d){  //global destructor
	showfunc("__cxa_finalize( d: %p)", d);

}

//!void __stack_chk_fail (void)
void impl_stack_chk_fail(void){
	showfunc("imp_stack_chk_fail", "");
	err_print("Stack Overflow!");
}

//Weak ref not really used
//!void __gmon_start__ (void)
void impl_gmon_start__(void){
	showfunc("__gmon_start__", "");
}
//!_Jv_RegisterClasses
void impl_Jv_RegisterClasses(void){
	showfunc("_Jv_RegisterClasses", "");
}

//!void perror(const char *s){
void impl_perror(const char *s){
	err_print("perror: %s", s);
}

//int * __errno_location(void)
int * impl_errno_location(void){
	err_print("errno_location", "");
//TODO return the adress of the errno variable
}