//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.


namespace Lib_GZ{class cAtomicQueue;}
#if !( defined tHDef_GZ_AtomicQueue)

#define tHDef_GZ_cAtomicQueue
#include "Lib_GZ/GZ.h"


#ifdef GZ_tAtomic
	#include "Lib_GZ/concurrentqueue.h"
#else
	#include "Lib_GZ/QArray.h"
#endif

#include "Lib_GZ/ThreadMsg.h"


namespace Lib_GZ{class cAtomicQueue;}
namespace Lib_GZ{
namespace AtomicQueue{}


class cAtomicQueue {
	#ifdef GZ_tAtomic
		moodycamel::ConcurrentQueue<void*> qaQueue;
	#else	
		gzQArray<void*> qaQueue;
	#endif
	
	public:
		inline void* fReceive(){
			#ifdef GZ_tAtomic
				void* item;
				if(qaQueue.try_dequeue(item)){
					return item;
				}else{
					return 0;
				}
			#else
				return qaQueue.fPrePop();
			#endif
		}
		
		inline gzInt fSend(Lib_GZ::cThreadMsg* _oMsg) {
			#ifdef GZ_tAtomic
				qaQueue.enqueue(_oMsg);
				return 0;
			#else	
				qaQueue.fPush(_oMsg);
				return 0;
			#endif	
		}
		
		
		inline cAtomicQueue(){};
		inline  ~cAtomicQueue(){};
	private:
};


}
#endif
