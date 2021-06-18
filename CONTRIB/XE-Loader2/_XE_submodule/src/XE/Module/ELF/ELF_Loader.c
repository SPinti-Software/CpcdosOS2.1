#ifndef _GNU_SOURCE /* for RTLD_DEFAULT */
#define _GNU_SOURCE 1
#endif

#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>

#include "bbuffer.h"

#include "XE/_Config.h"

#ifdef HAVE_MMAP
#include <sys/mman.h>
#endif

#ifdef HAVE_DLFCN_H
#include <dlfcn.h>
#endif

#ifdef __WIN32
#ifndef WIN32_LEAN_AND_MEAN
#define WIN32_LEAN_AND_MEAN
#endif
#include <windows.h>
#endif

#include "ELF_Loader.h"
//#include "elfload_dlfcn.h"



/* An array of files currently in the process of loading */
struct ELF_File elfFiles[MAX_ELF_FILES];
int elfFileCount = 0;



XE_Module* 
	Load_Module_ELF(XE_Module* _module) 
{
	ELF_File* f = Load_Module_ELF_MEM(_module->file.path, _module->file.data, _module->file.size);
	_module->handle = f;
	_module->have_reloc = (f->ehdr->e_type == ET_DYN);
	_module->section_text = f->shdr_madr_text;
	//GDB_Send_AddSymbolFile(f->nm, f->shdr_madr_text);
	/*
	_module->name =  (char*) ( m->codeBase + exports->Name);
	_module->handle = m;
	
	if(m->isDLL){
		_module->type = XE_Type_(DLL);
	}
	*/
	return _module;
}


ELF_File* 
	Load_Module_ELF_MEM(char *nm, void* data, size_t size) 
{

	
	_printl("----= loadELF: %s =-----", nm);

    int i, fileNo;
    struct ELF_File *f;

    ElfNative_Dyn *curdyn;

    /* first, make sure it's not already loaded or loading */
    for (i = 0; i < elfFileCount; i++) {
        if (strcmp(elfFiles[i].nm, nm) == 0) {
			_printl("f->hashtab : %d",  (&(elfFiles[i]))->hashtab  );
			_printl("\n\n/////-= Already Loaded ELF: %s =--///\n", nm);
			return &(elfFiles[i]);
		}
    }

    /* now start preparing to load it */
    fileNo = elfFileCount;
    f = &(elfFiles[fileNo]);
    memset(f, 0, sizeof(struct ELF_File));
    elfFileCount++;
    f->nm = strdup(nm);
    f->prog = data;
    f->proglen = size;

    /* make sure it's an ELF file */
    f->ehdr = (ElfNative_Ehdr *) f->prog;
    if (memcmp(f->ehdr->e_ident, ELFMAG, SELFMAG) != 0) {
         err_print( "%s does not appear to be an ELF file.");
         return NULL;
        
    }

    /* only native-bit supported for the moment */
    if ((SIZEOF_VOID_P == 4 && f->ehdr->e_ident[EI_CLASS] != ELFCLASS32) ||
        (SIZEOF_VOID_P == 8 && f->ehdr->e_ident[EI_CLASS] != ELFCLASS64)) {
			err_print( "%s is not a %d-bit ELF file.", nm, SIZEOF_VOID_P * 8);
           /// return NULL;
    }

    /* FIXME: check endianness */

    /* must be an executable or .so to be loaded */
    if (f->ehdr->e_type != ET_EXEC &&
        f->ehdr->e_type != ET_DYN) {
			err_printl( "%s is not an executable or shared object file.");
			return NULL;
    }

	if(f->ehdr->e_type != ET_DYN){
		warn_print("warning, not relocable, executable require to be loaded on Virtual Memory");
	}else{
		//IF DET_FLAGS_1 => Dynamic section is present
			//IF DE_1_PIE is set in DET_FLAGS_1 => pie executable 
	}
	
    /* now go through program headers, to find the allocation space of this file */
    f->min = (void *) -1;
    f->max = 0;
	
	
	Elf32_Shdr* shdr = (Elf32_Shdr*)(f->prog + f->ehdr->e_shoff);
	Elf32_Phdr* phdr = (Elf32_Phdr*)(f->prog + f->ehdr->e_phoff);
		
	//char* phdrl = f->prog + f->ehdr->e_phoff;
	//char* shdrl = f->prog + f->ehdr->e_shoff;

    for (Elf32_Half i = 0; i < f->ehdr->e_phnum; i++) {
		Elf32_Phdr* _phdr = (Elf32_Phdr*) &phdr[i];

        /* perhaps check its location */
        if (_phdr->p_type == PT_LOAD) {
            /* adjust min/max */
            if ((void *) _phdr->p_vaddr < f->min) {
                f->min = (void *) _phdr->p_vaddr;
            }
            if ((void *) _phdr->p_vaddr + _phdr->p_memsz > f->max) {
                f->max = (void *) _phdr->p_vaddr + _phdr->p_memsz;
            }

        } else if (/*maybe &&*/ _phdr->p_type == PT_INTERP) {
			/*
            if (strcmp( (char *) (f->prog + _phdr->p_offset),  "/usr/bin/gelfload-ld")) {
               	err_printl( " wrong loader!.%s " , ((char *)(f->prog + _phdr->p_offset)) ) ;
                return NULL;
            }
			*/
        }
    }

    /* with this size info, we can allocate the space */
    f->memsz = f->max - f->min;
    
    /* if this is a binary, try to allocate it in place. elfload is addressed above 0x18000000 */
    if (f->ehdr->e_type == ET_EXEC && f->max < (void *) 0x18000000) {
        f->loc = bbuffer(f->min, f->memsz);

    } else {
        f->loc = bbuffer(NULL, f->memsz);

    }
    memset(f->loc, 0, f->memsz);

    f->offset = f->loc - f->min;

/*
	//print section
	Elf32_Shdr *sh_strtab = &shdr[f->ehdr->e_shstrndx];
	const char* const sh_strtab_p = p + sh_strtab->sh_offset;

	for (int i = 0; i < f->ehdr->e_shnum; ++i) {
		printf("%2d: %4d '%s'\n", i, shdr[i].sh_name,
	   sh_strtab_p + shdr[i].sh_name);
	}
	*/
	/*
	//e_shentsize
  Elf32_Ehdr *ehdr = (Elf32_Ehdr*)f->prog ;
  Elf32_Shdr *shdr = (Elf32_Shdr *)(f->prog  + ehdr->e_shoff);
  
  Elf32_Shdr *sh_strtab = &shdrl[ehdr->e_shstrndx];
  const char *const sh_strtab_p = f->prog + sh_strtab->sh_offset;

  for (int i = 0; i < ehdr->e_shnum; ++i) {
		printf("%2d: %4d '%s'\n", i, shdr[i].sh_name,
           sh_strtab_p + shdr[i].sh_name);
  }*/



	Elf32_Shdr *sh_strtab = &shdr[f->ehdr->e_shstrndx];
	const char *const sh_strtab_p = f->prog + sh_strtab->sh_offset;
  
	
	
	void* phdr_madr = 0;
    /* we have the space, so load it in */
	for (Elf32_Half i = 0; i < f->ehdr->e_phnum; i++) {
		Elf32_Phdr* _phdr = (Elf32_Phdr*) &phdr[i];
		
		//  Elf32_Word	p_type;			/* Segment type */
		//  Elf32_Off		p_offset;		/* Segment file offset */
		 // Elf32_Addr	p_vaddr;		/* Segment virtual address */
		 // Elf32_Addr	p_paddr;		/* Segment physical address */
		//  Elf32_Word	p_filesz;		/* Segment size in file */
		//  Elf32_Word	p_memsz;		/* Segment size in memory */
		 // Elf32_Word	p_flags;		/* Segment flags */
		//  Elf32_Word	p_align;		/* Segment alignment */

        /* perhaps load it in */
        if (_phdr->p_type == PT_LOAD) {
            if (_phdr->p_filesz > 0) {
				void* dest = (void *) _phdr->p_vaddr + f->offset;
				_printl("MemCpy PT_LOAD: [0x%p, 0x%p] to %p" ,  _phdr->p_offset,  _phdr->p_offset + _phdr->p_filesz, dest);
                /* OK, there's something to copy in, so do so */
                _memcpy(dest,
                       f->prog + _phdr->p_offset,
                       _phdr->p_filesz);
					   
					   
				if(_phdr->p_offset == 0){ //Base Segment Loaded in memory
					phdr_madr = dest;
				}
            }

        } else if (_phdr->p_type == PT_DYNAMIC) {
            /* we need this to load in dependencies, et cetera */
            f->dynamic = (ElfNative_Dyn *) (f->prog + _phdr->p_offset);

        }
    }
    
	
	//print section

    for (Elf32_Half i = 0; i < f->ehdr->e_shnum ; i++) {
		Elf32_Shdr* _shdr = (Elf32_Shdr*) &shdr[i];

		  //Elf32_Word	sh_name;		/* Section name (string tbl index) */
		  //Elf32_Word	sh_type;		/* Section type */
		  //Elf32_Word	sh_flags;		/* Section flags */
		  //Elf32_Addr	sh_addr;		/* Section virtual addr at execution */
		  //Elf32_Off		sh_offset;		/* Section file offset */
		  //Elf32_Word	sh_size;		/* Section size in bytes */
		  //Elf32_Word	sh_link;		/* Link to another section */
		  //Elf32_Word	sh_info;		/* Additional section information */
		  //Elf32_Word	sh_addralign;		/* Section alignment */
		  //Elf32_Word	sh_entsize;		/* Entry size if section holds table */
			char* sec_name =  (char*)sh_strtab_p + _shdr->sh_name;
			_printl("%2d: %4d '%s', [0x%p, 0x%p]", i, _shdr->sh_name,
            sec_name, _shdr->sh_offset, _shdr->sh_offset + _shdr->sh_size);
			
			if(phdr_madr != 0 && strcmp(sec_name, ".text") == 0){
				f->shdr_madr_text = phdr_madr + _shdr->sh_offset;
				_printl("Found text sec 0x%p ", f->shdr_madr_text);
			}
			
			
	}
	
    /* now go through dynamic entries, looking for basic vital info */
    for (curdyn = f->dynamic; curdyn && curdyn->d_tag != DT_NULL; curdyn++) {
        if (curdyn->d_tag == DT_STRTAB) {
			//printf("\n-DT_STRTAB %d", curdyn->d_tag );
            f->strtab = (char *) (curdyn->d_un.d_ptr + f->offset);

        } else if (curdyn->d_tag == DT_SYMTAB) {
			//printf("\n-DT_SYMTAB %d", curdyn->d_tag );
            f->symtab = (ElfNative_Sym *) (curdyn->d_un.d_ptr + f->offset);

        } else if (curdyn->d_tag == DT_HASH) {
			//printf("\n-DT_HASH %d, : %d", curdyn->d_tag, (curdyn->d_un.d_ptr + f->offset) );
            f->hashtab = (ElfNative_Word *) (curdyn->d_un.d_ptr + f->offset);
			

        } else if (curdyn->d_tag == DT_RELA) {
			//printf("\n-DT_RELA %d", curdyn->d_tag );
            f->rela = (ElfNative_Rela *) (curdyn->d_un.d_ptr + f->offset);

        } else if (curdyn->d_tag == DT_RELASZ) {
			//printf("\n-DT_RELASZ %d", curdyn->d_tag );
            f->relasz = curdyn->d_un.d_val;

        } else if (curdyn->d_tag == DT_REL) {
			//printf("\n-DT_REL %d", curdyn->d_tag );
            f->rel = (ElfNative_Rel *) (curdyn->d_un.d_ptr + f->offset);

        } else if (curdyn->d_tag == DT_RELSZ) {
			//printf("\n-DT_RELSZ %d", curdyn->d_tag );
            f->relsz = curdyn->d_un.d_val;

        } else if (curdyn->d_tag == DT_JMPREL) {
			//printf("\n-DT_JMPREL %d", curdyn->d_tag );
            f->jmprel = (void *) (curdyn->d_un.d_ptr + f->offset);

        } else if (curdyn->d_tag == DT_PLTRELSZ) {
			//printf("\n-DT_PLTRELSZ %d", curdyn->d_tag );
            f->jmprelsz = curdyn->d_un.d_val;

        }else{
			//printf("\n-UNKNOW %d", curdyn->d_tag );
		}
    }
	
	_printl(" f->hashtab : %d", f->hashtab  );
	_printl("/////-= End ELF: %s =--///\n", nm);

    /*check dependencies */
	
    for (curdyn = f->dynamic; curdyn && curdyn->d_tag != DT_NULL; curdyn++) {
        if (curdyn->d_tag == DT_NEEDED) {
           // loadELF(f->strtab + curdyn->d_un.d_val, instdir, 0);
		   char* _nm = (f->strtab + curdyn->d_un.d_val);
		//   char* _dir = instdir;
		   
		   warn_print("--!!!DEPEND: %s", _nm);
           
        }
    }
	
    return f;
}

void relocateELFs()
{
    int i;

    for (i = elfFileCount - 1; i >= 0; i--) {
        relocateELF(i, &(elfFiles[i]));
    }
}

void relocateELF(int fileNo, struct ELF_File *f)
{
    /* do processor-specific relocation */
#if GELFLOAD_ARCH_i386
_printl("GELFLOAD_ARCH_i386");

#define REL_P ((ssize_t) (currel->r_offset + f->offset))
#define REL_S ((ssize_t) (findELFSymbol( \
                f->strtab + f->symtab[ELFNATIVE_R_SYM(currel->r_info)].st_name, \
                f, fileNo, -1, NULL)))
#define REL_A (*((ssize_t *) REL_P))
#define WORD32_REL(to) REL_A = (ssize_t) (to)

    /* we ought to have rel and symtab defined */
    if (f->rel && f->symtab) {
        ElfNative_Rel *currel = f->rel;
        for (; (void *) currel < (void *) f->rel + f->relsz; currel++) {
			
			//https://docs.oracle.com/cd/E19120-01/open.solaris/819-0690/chapter6-26/index.html
			//https://docs.oracle.com/cd/E19120-01/open.solaris/819-0690/chapter8-50/index.html
			//https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/arm/arm-eabi-4.6/+/refs/heads/idea133/share/info/as.info
			//https://docs.oracle.com/cd/E19683-01/817-3677/x-j1h4m/index.html
			//https://people.freebsd.org/~marcel/tls.html
            switch (ELFNATIVE_R_TYPE(currel->r_info)) {
                case R_386_32:
				
				_printl(" f->hashtab : %d", f->hashtab  );
				_printl("R_386_32 %s ", f->nm);
					
                    WORD32_REL(REL_S + REL_A);
                    break;

                case R_386_PC32:
					_printl("R_386_PC32 %s ", f->nm);
					
                    WORD32_REL(REL_S + REL_A - REL_P);
                    break;

                case R_386_COPY:
                {
				
					_printl("R_386_COPY %s ", f->nm);
					
                    /* this is a bit more convoluted, as we need to find it in both places and copy */
                    ElfNative_Sym *localsym, *sosym;
                    localsym = &(f->symtab[ELFNATIVE_R_SYM(currel->r_info)]);
                    void *soptr = findELFSymbol(
                            f->strtab + localsym->st_name,
                            f, -1, fileNo, &sosym);
					
                    //OK, we should have both, so copy it over 
                    if (localsym && sosym) {
                        _memcpy((void *) (localsym->st_value + f->offset),
                               soptr, sosym->st_size);
                    } else {
                       //  depend on localsym's size 
                        _memcpy((void *) (localsym->st_value + f->offset),
                               soptr, localsym->st_size);

                    }

                    break;
                }

                case R_386_GLOB_DAT:
                    WORD32_REL(REL_S + REL_A);
                    break;

                case R_386_RELATIVE:
                    WORD32_REL(f->loc + REL_A);
                    break;

                default:
                    err_print( "Unsupported relocation %d in %s", ELFNATIVE_R_TYPE(currel->r_info), f->nm);
            }
        }
    }

    if (f->jmprel && f->symtab) {
        ElfNative_Rel *currel = (ElfNative_Rel *) f->jmprel;
        for (; (void *) currel < f->jmprel + f->jmprelsz; currel++) {
            switch (ELFNATIVE_R_TYPE(currel->r_info)) {
                case R_386_JMP_SLOT:
                    WORD32_REL(REL_S);
                    break;
            }
        }
    }


#elif GELFLOAD_ARCH_x86_64
_printl("GELFLOAD_ARCH_x86_64");

#define REL_P ((ssize_t) (currel->r_offset + f->offset))
#define REL_S ((ssize_t) (findELFSymbol( \
                f->strtab + f->symtab[ELFNATIVE_R_SYM(currel->r_info)].st_name, \
                NULL, fileNo, -1, NULL)))
#define REL_A (*((ssize_t *) REL_P))
#define WORD32_REL(to) REL_A = (int32_t) (to)
#define WORD64_REL(to) REL_A = (ssize_t) (to)

    /* we ought to have rel and symtab defined */
    if (f->rela && f->symtab) {
        ElfNative_Rela *currel = f->rela;
        for (; (void *) currel < (void *) f->rela + f->relasz; currel++) {
            switch (ELFNATIVE_R_TYPE(currel->r_info)) {
                case R_X86_64_64:
                    WORD64_REL(REL_S + REL_A);
                    break;

                case R_X86_64_PC32:
                    WORD32_REL(REL_S + REL_A - REL_P);
                    break;

                case R_X86_64_COPY:
                {
                    /* this is a bit more convoluted, as we need to find it in both places and copy */
                    ElfNative_Sym *localsym, *sosym;
                    localsym = &(f->symtab[ELFNATIVE_R_SYM(currel->r_info)]);
                    void *soptr = findELFSymbol(
                            f->strtab + localsym->st_name,
                            NULL, -1, fileNo, &sosym);

                    /* OK, we should have both, so copy it over */
                    if (localsym && sosym) {
                        _memcpy((void *) (localsym->st_value + f->offset),
                               soptr, sosym->st_size);
                    } else {
                        /* depend on localsym's size */
                        _memcpy((void *) (localsym->st_value + f->offset),
                               soptr, localsym->st_size);

                    }

                    break;
                }

                case R_X86_64_GLOB_DAT:
                    WORD64_REL(REL_S + REL_A);
                    break;

                case R_X86_64_RELATIVE:
                    WORD64_REL(f->loc + REL_A);
                    break;

                default:
                    fprintf(stderr, "Unsupported relocation %d in %s\n", (int) ELFNATIVE_R_TYPE(currel->r_info), f->nm);
            }
        }
    }

    if (f->jmprel && f->symtab) {
        ElfNative_Rela *currel = (ElfNative_Rela *) f->jmprel;
        for (; (void *) currel < (void *) f->jmprel + f->jmprelsz; currel++) {
            switch (ELFNATIVE_R_TYPE(currel->r_info)) {
                case R_X86_64_JUMP_SLOT:
                    WORD64_REL(REL_S);
                    break;

                default:
                    fprintf(stderr, "Unsupported jmprel relocation %d in %s\n", (int) ELFNATIVE_R_TYPE(currel->r_info), f->nm);
            }
        }
    }


#else
#error Unsupported architecture.
#endif
}

/* Initialize every ELF loaded /except/ for f (usually the binary) */
void initELF(struct ELF_File *except)
{
    int i;
    struct ELF_File *f;
    ElfNative_Dyn *dyn;

    for (i = elfFileCount - 1; i >= 0; i--) {
        f = &(elfFiles[i]);
        if (f == except) continue;

        /* init is in the dynamic section */
        if (f->dynamic == NULL) continue;
        for (dyn = f->dynamic; dyn && dyn->d_tag != DT_NULL; dyn++) {
            if (dyn->d_tag == DT_INIT) {
                /* call it */
                ((void(*)()) (dyn->d_un.d_ptr + f->offset))();
                break;
            }
        }
    }
}

//#include "elfload_exec.h"
int CallEntryPoint_ELF(ELF_File* f)
{
	_printl("-- Relocate ELF --");
      relocateELF(1, f);
	  

	// typedef int (WINAPI *ExeEntryProc)(void);
	//result->exeEntry = (ExeEntryProc)(LPVOID)(code + result->headers->OptionalHeader.AddressOfEntryPoint);
	
	//	DllEntryProc DllEntry = (DllEntryProc)(LPVOID)(code + result->headers->OptionalHeader.AddressOfEntryPoint);
	
/*
		for ( ElfNative_Dyn* dyn = f->dynamic; dyn && dyn->d_tag != DT_NULL; dyn++) {
			if (dyn->d_tag == DT_INIT) {
					_printl("---call--");
				((void(*)()) (dyn->d_un.d_ptr + f->offset))();
				break;
			}
		}
	*/
	
	_printl("--=== Execute ELF ===---");
	((void(*)()) (f->ehdr->e_entry + f->offset))();


		
		//  WITHSTACK_JMP(newstack, f->ehdr->e_entry + f->offset);
		
				/*
		 const char* argv[] = { "param0", "param1", "param2" };
		char *envp[] = { "param0", "param1", "param2" };
		

		 void **newstack;
    int i, envc, progarg;
    char *dir, *fil;
int argc = 0;

    for (envc = 0; envp[envc]; envc++);
    newstack = (void**)
        alloca((argc + envc + 2) * sizeof(void*));
    newstack[0] = (void*) (size_t) (argc - progarg);
    for (i = progarg; i < argc; i++) {
        newstack[i - progarg + 1] = (void*) argv[i];
    }
    newstack[i - progarg + 1] = NULL;

    for (i = 0; i < envc; i++) {
        newstack[i-progarg+argc+2] = (void*) envp[i];
    }
    newstack[i-progarg+argc+2] = NULL;

	printf("\n--RUN ELF--");

    WITHSTACK_JMP(newstack, f->ehdr->e_entry + f->offset);
		*/
		
	_printl("---end--");
	return 0;
}





/* Find a symbol within the currently loaded ELF files
 * localin: The number of the current file, where STB_LOCAL symbols are OK
 * notin: Do not bind to symbols in this file 
 * Either can be -1 */
///#include "XE/Module/PE/PE_Loader.h"
///#include "XE/FuncTable/FuncTable.h"
 
extern void* Module_GetFunction(const char* _sModule, const char*  _sFunc);
 
void *findELFSymbol(const char *nm, struct ELF_File *f, int localin, int notin, ElfNative_Sym **syminto)
{
    


//err_print("Seach: %s", nm);

    int i;
 //   struct ELF_File *f;
    ElfNative_Word hash = elf_hash((unsigned char *) nm);
    ElfNative_Word bucket, index;
    ElfNative_Sym *sym;
    void *hostsym;
    if (syminto) *syminto = NULL;

    if (nm[0] == '\0') return NULL;

  //err_print( "Symbol undefined: '%s'\n", nm);
  
return Module_GetFunction(f->nm, nm);

/*
    for (i = 0; i < elfFileCount; i++) {
        if (i == notin) continue;

        f = &(elfFiles[i]);
        if (onlyin && f != onlyin) continue;

        // if this is a host library, just try the host method 
        if (f->hostlib == HOSTLIB_HOST) {
            char lsym[1024];
            snprintf(lsym, 1024, "gelfload__%s", nm);

#if defined(HAVE_DLFCN_H)
            hostsym = dlsym(f->prog, lsym);
            if (hostsym) return hostsym;
            hostsym = dlsym(f->prog, nm);
            if (hostsym) return hostsym;
            continue;
#elif defined(__WIN32)
            char csym[1024];
            int isimp = 0;


if(strcmp(nm,"printf")== 0) { //Temp
	return &FakePrintf;
}
if(strcmp(nm,"sprintf")== 0) { //Temp
	return &FakePrintf;
}
if(strcmp(nm,"snprintf")== 0) { //Temp
	return &FakePrintf;
}
if(strcmp(nm,"fputs")== 0) { //Temp
	return &FakePrintf;
}


            //Remove _imp__ if it's present 
            if (strncmp(nm, "_imp__", 6) == 0) {
                isimp = 1;
                nm += 6;
                snprintf(lsym, 1024, "gelfload__%s", nm);
            }

            // Try adding a _ first, to get the cdecl version 
            snprintf(csym, 1024, "_%s", lsym);
            hostsym = GetProcAddress(f->prog, csym);
            if (hostsym == NULL)
                hostsym = GetProcAddress(f->prog, lsym);
            if (hostsym == NULL) {
                snprintf(csym, 1024, "_%s", nm);
                hostsym = GetProcAddress(f->prog, csym);
            }
            if (hostsym == NULL)
                hostsym = GetProcAddress(f->prog, nm);
            if (hostsym) {
                if (isimp) {
                    // Need a pointer to this pointer 
                    void **pptr = (void **) malloc(sizeof(void*));
                    if (pptr == NULL) {
                        perror("malloc");
                        exit(1);
                    }
                    *pptr = hostsym;
                    return (void *) pptr;
                    
                } else {
                    return hostsym;

                }
            }
#endif
            continue;

        } else if (f->hostlib == HOSTLIB_DL) {
           hostsym = elfload_dl(nm);
           if (hostsym) return hostsym;
           continue;
        }

	
	
		if((f)->hashtab != 0){
				
			// figure out the bucket ... 
			bucket = hash % ELFFILE_NBUCKET(f);

			// then find the chain entry 
			index = ELFFILE_BUCKET(f, bucket);

			// and work our way through the chain 
			for (; index != STN_UNDEF; index = ELFFILE_CHAIN(f, index)) {
				sym = &(f->symtab[index]);

				// see if it's defined 
				if (strcmp(f->strtab + sym->st_name, nm) == 0 &&
					(i == localin || ELFNATIVE_ST_BIND(sym->st_info) != STB_LOCAL) &&
					sym->st_shndx != SHN_UNDEF) {
					// we found our symbol! 
					if (syminto != NULL) {
						*syminto = sym;
					}
					return (void *) (sym->st_value + f->offset);
				}
			}
		}else{
			//printf("\n-Error: hashtab is null");
		}
    }
*/
/*
   err_print( "Symbol undefined: '%s'\n", nm);

	static unsigned int current = 0;
	current++;

	warn_print("Warning, %s:  ---------   %s ",  "Exe", nm);
	
	aDummyFunc[current].Who = nm;
	aDummyFunc[current].DLL = "Exe";

	if (current >=  sizeof(aDummyFunc) / sizeof( aDummyFunc[0] )) {current = 0;}

   return (FARPROC)aDummyFunc[current].dFunc;
*/


    // uh oh, not found!
  
  //  return NULL;
  //  return &FakeFunc;
	
	
}

/* The standard ELF hash function */
ElfNative_Word elf_hash(const unsigned char *name)
{
    ElfNative_Word h = 0, g;

    while (*name) {
        h = (h << 4) + *name++;
        if (g = h & 0xf0000000)
            h ^= g >> 24;
        h &= ~g;
    }
    return h;
}
