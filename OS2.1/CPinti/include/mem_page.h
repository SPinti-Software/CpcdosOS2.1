// Entete
bool 				MEM_DEBUG 			= true;	// Afficher le debug
bool				CHECK_OVERFLOW		= false;		// Detecter les memory overflow
bool				BREAK_ABORT			= true;	// Stopper le programme a la moindre erreur

bool				STAT_DEBUG			= true;
bool				memoire_initialise 	= false;

#define					_ERR_PAGGING_FULL_			1
#define 				_ERR_PAGGING_TABLE_FULL_	2
#define					_ERR_PAGGING_TABLE_OVERFLOW	3
#define					_ERR_BUFFER_OVERFLOW		4
static long				CODE_ERREUR					= 0;



// Definit automatiquement
static unsigned long 	Page_MAX 				= 0; 				// Pages maximum
static unsigned long 	Alloc_per_page_MAX 		= 0; 				// Nombre allocations par page
static unsigned long		Alloc_nb_MAX			= 0;
static unsigned long 	Page_cree				= 0;				// Nombre de pages crees
static unsigned long 	MEMOIRE_LIBRE_DEPART 	= 0; 				// Memoire RAM libre de depart
static unsigned long 	MEMOIRE_LIBRE_ACTUEL 	= 0; 				// Memoire RAM libre de depart
static unsigned long 	Page_Size				= 4000000; 				// 4 Mo par page
static unsigned long		IndexZero				= 10;				// 10 octets

#define 				magic_flag_nombre_MAX		10 //24128
const unsigned long		magic_flag_size 			= 6;
char 					magic_flag[magic_flag_size] = {0x7C, 0x45, 0x4E, 0x44, 0x21, 0x00}; // cPCdOS

bool					Magic_Flag_used		[magic_flag_nombre_MAX];
void*					Magic_Flag_addr		[magic_flag_nombre_MAX];
void*					Magic_Flag_stack_0	[magic_flag_nombre_MAX];
void*					Magic_Flag_stack_1	[magic_flag_nombre_MAX];
void*					Magic_Flag_stack_2	[magic_flag_nombre_MAX];
void*					Magic_Flag_stack_3	[magic_flag_nombre_MAX];
unsigned long			Magic_Flag_Page		[magic_flag_nombre_MAX];
unsigned long 			Magic_Flag_Table	[magic_flag_nombre_MAX];
bool					EFFACEMENT			= false;

static void* 			Addresse_before_alloc 	= NULL;
static unsigned long		LAST_Alloc_table_idx	= 0;
static unsigned long		LAST_Alloc_page_idx		= 0;

/******************* DEBUG *******************/
static const char*		_overflow_file			= NULL;
static const char*		_overflow_function		= NULL;
static long				_overflow_line			= 0;
static unsigned long		_overflow_page			= 0;
static unsigned long		_overflow_table			= 0;

static unsigned long	nombre_malloc 			= 0;
static unsigned long	nombre_calloc 			= 0;
static unsigned long	nombre_realloc 			= 0;
static unsigned long	nombre_free 			= 0;
static void*			dernier_malloc;
static unsigned long		dernier_malloc_size;
static void*			dernier_calloc;
static unsigned long		dernier_calloc_size;

static unsigned long		dernier_check_free_abs;
static unsigned long		dernier_check_free;
static unsigned long		dernier_check_size;
static unsigned long		dernier_check_index;

static unsigned long		dernier_page_free;
static unsigned long		dernier_page_size;
static void*			dernier_page_debut;
static void*			dernier_page_fin;
static size_t			dernier_page_taille;
static void*			dernier_page_sbrk;
static unsigned long		dernier_page_index;
static void*			dernier_page_table_debut;
static void*			dernier_page_table_fin;
static void*			dernier_page_table;
static unsigned long		dernier_page_table_index;

static void*			dernier_memset;


// FREEBASIC RUNTIME

static char *dernier_src;
static char *dernier_dst;
static unsigned long dernier_dst_size;

////////




static unsigned long	nombre_new;
static unsigned long	nombre_fragment;

static long position;


extern "C" void* 		__real_malloc (size_t taille);
extern "C" void* 		__real_calloc (size_t taille, size_t nombreItems);
extern "C" void 		__real_free (void* pointer);
extern "C" void* 		__real_realloc (void* pointeur, size_t taille);



/** Allocation memoire qui represente un malloc, calloc... **/
struct _mem_alloc_t
{
	/* identification */
	unsigned long	num_page_parent;	// Numero de la page PARENT
	long 			tag_ID;				// Identifiant unique
	bool 			libre;				// Utilise ?
	
	
	/* data */
    size_t 			taille;				// Taille de l'allocation
	unsigned long	index_magicflag;	// Index memoire flag
	void*			offset_debut;		// Adresse memoire DEBUT
	void*			offset_fin;			// Adresse memoire FIN
};
_mem_alloc_t 	*mem_table_ptr;

/** Page qui represente un bloc de memoire par  **/
struct _page_t
{
	/* identification */
	unsigned long 	num_page;		// Numero de page actuelle (ABOLUE)
	unsigned long	PID;			// Numero de Process associe
	bool			libre;			// Page libre ou non
	
	/* data */
	size_t 			taille;			// Taille en octets de la page
	size_t			mem_free_abs;	// Memoire page libre absolue
	size_t			mem_free;		// Memoire page libre
	size_t			mem_used;		// Memoire page utilisee
	unsigned long 	alloc_idx;		// Index alloue le plus eleve
	unsigned long 	nombre_alloc;	// Index alloue le plus eleve
	
	void*			offset_debut; 	// Adresse memoire DEBUT
	void* 			offset_fin;		// Adresse memoire FIN
	
	/* Tableau de bloc de memoire DANS la page */
	_mem_alloc_t 	*mem_table;
	
};
_page_t *page;

extern "C" void __crt1_startup(void);

/* Initialisation & Gestion des allocations */
void 			initialiser_memoire				();
unsigned long	creer_page						(unsigned long taille, unsigned long PID, unsigned long preference);
unsigned long 	check_memory_overflow			(const char* fichier, const char* fonction, long ligne);
unsigned long 	check_allocation_possibility	(unsigned long size_mem);
void* 			check_free_fragmentation		(unsigned long NumPAGE, unsigned long size_mem);
void* 			check_free_page_fragmentation	(unsigned long NumPAGE, unsigned long size_mem);
void* 			allocation_in_page				(unsigned long NumPAGE, unsigned long size_mem);
void* 			allocation_in_page				(unsigned long NumPAGE, size_t size_mem, bool magicflag);
bool 			freeing_allocation				(unsigned long NumPAGE, unsigned long index_table);
bool 			freeing_page					(unsigned long NumPAGE);

/* Obtention des informations */
unsigned long 	get_free_memory					();
unsigned long 	get_numbers_of_pages			();
unsigned long	get_number_alloc_page			(unsigned long NumPAGE);
unsigned long 	get_page_size					(unsigned long NumPAGE);
size_t 			get_page_mem_free_abs			(unsigned long NumPAGE);
size_t 			get_page_mem_free				(unsigned long NumPAGE);
size_t 			get_page_mem_used				(unsigned long NumPAGE);
void* 			get_end_offset_page_addr		(unsigned long NumPAGE);
void* 			get_begin_offset_page_addr		(unsigned long NumPAGE);
unsigned long 	get_page__where_is_pointer		(void* pointeur);
unsigned long 	get_allocation_table__where_is_pointer (unsigned long NumPAGE, void* Pointeur);

/* Wrapper principaux */
void* 			m_allocation					(unsigned long size_mem);
void* 			c_allocation					(unsigned long size_mem, unsigned long nb_elem);
void 			f_allocation					(void* pointer);
void* 			r_allocation					(void* pointer, unsigned long size_elm);
void* 			m_memset						(void* pointeur, long valeur, unsigned long taille);
char* 			m_strcpy						(char* destination, const char* source);
char* 			m_strncpy						(char* destination, const char* source, size_t taille);
char* 			m_strncat						(char* destination, const char* source, size_t num);
/* Fonctions experimentaux */
void* 			exp_segment						(unsigned long taille);
void* 			act_segment						();
/* DEBUG MEMORY */
void 			print_backtrace					();
extern "C" void	cpc_deb							(char *dst, const char *src, unsigned long bytes );
void 			break_gdb						();
void 			dump_memory						(const char * descritpion, const void * adresse, const long taille);
void 			dump_page						(unsigned long NumPAGE);





