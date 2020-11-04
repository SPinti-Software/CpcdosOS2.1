
#ifndef ManagedAlloc

	class ManagedAlloc
	{
		
		private:
			unsigned int 	nb_alloc_do			= 0;
			int 			managed_alloc_max 	= 1024;
			struct alloc_array
			{
				void* 			address;
			};
			alloc_array *Alloc_Array;
			
			const char* 	name_;
			
			unsigned int 	NombreMalloc;
			unsigned int 	NombreCalloc;
			unsigned int 	NombreFree;
			unsigned int 	NombreRealloc;
		
		public:

			void 	ManagedAlloc_			(size_t alloc_max, const char* filename);
			bool 	ManagedFree				(void* ptr);
			int 	ManagedAlloc_clean		();
			void* 	ManagedMalloc			(size_t size__);
			void* 	ManagedCalloc			(size_t size__, size_t sizeElem__);
			void* 	ManagedRealloc			(void* ptr, size_t size__);
			void 	dump_memory				(void);
	};
	
#endif