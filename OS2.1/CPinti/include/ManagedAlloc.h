#define ManagedAlloc

#ifndef ManagedAlloc

	class ManagedAlloc
	{
		
		private:
			unsigned long 	nb_alloc_do			= 0;
			long 			managed_alloc_max 	= 1024;
			struct alloc_array
			{
				void* 			address;
			};
			alloc_array *Alloc_Array;
			
			const char* 	name_;
			
			unsigned long 	NombreMalloc;
			unsigned long 	NombreCalloc;
			unsigned long 	NombreFree;
			unsigned long 	NombreRealloc;
		
		public:

			void 	ManagedAlloc_			(size_t alloc_max, const char* filename);
			bool 	ManagedFree				(void* ptr);
			long 	ManagedAlloc_clean		();
			void* 	ManagedMalloc			(size_t size__);
			void* 	ManagedCalloc			(size_t size__, size_t sizeElem__);
			void* 	ManagedRealloc			(void* ptr, size_t size__);
			void 	dump_memory				(void);
	};
	
#endif