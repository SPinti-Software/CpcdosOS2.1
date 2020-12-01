
#ifndef ManagedAlloc

	class ManagedAlloc_exe
	{
		
		private:
		int managed_alloc_max = 1024;
		void* Alloc_Array[4096] = {0};
		const char* name;
		
		public:

		void ManagedAlloc_			(int alloc_max, const char* name);
		bool ManagedFree			(void* ptr);
		int ManagedAlloc_clean		();
		void* ManagedMalloc			(size_t size__);
		void* ManagedCalloc			(size_t size__, size_t sizeElem__);
	};
#endif