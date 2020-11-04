// GCC - Wrapping function

void __real_puts (const char* txt);
void __wrap_puts (const char* txt);

void* __real_malloc (size_t taille);
void* __wrap_malloc (size_t taille);


void* __real_calloc (size_t nombreItems, size_t taille);
void* __wrap_calloc (size_t nombreItems, size_t taille);

void __real_free (void* pointeur);
void __wrap_free (void* pointeur);

void __real_fclose (FILE* stream);
void __wrap_fclose (FILE* stream);

void __real_abort (void);
void __wrap_abort (void);

void __real_sleep (int secondes);
void __wrap_sleep (int secondes);

void __real_usleep (int usecondes);
void __wrap_usleep (int usecondes);

void __real_fb_Sleep (int millisecondes);
void __wrap_fb_Sleep (int millisecondes);