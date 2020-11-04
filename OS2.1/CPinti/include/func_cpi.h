/* Entete func_cpi.cpp */

#include <iostream>
#include <sstream>
#include <sys/time.h>

#ifndef doevents
#define doevents(temps) cpinti::cpinti_doevents(temps)
#endif

extern "C" int __kbhit(void);
extern "C" unsigned short _w32_intel (unsigned short val);
extern "C" unsigned short _w32_intel16 (unsigned short val);

namespace cpinti
{
	
	void cpinti_doevents					();
	void cpinti_doevents					(unsigned int Temps);
	void cpinti_Sleep						(unsigned int secondes);
	void cpinti_USleep						(unsigned int MicroSecondes);
	
	namespace Func_Cpinti
	{
		unsigned long 		_w32_intel  		(unsigned long val);
		unsigned short 		_w32_intel16 		(unsigned short val);

		std::string 		to_string			(int nombre);
		std::string 		to_string			(unsigned int nombre);
		std::string 		to_string			(long unsigned int nombre);
		std::string 		to_string			(long nombre);
		std::string 		to_string			(double nombre);
		std::string 		to_string			(short unsigned int nombre);
		
		
		std::string 		to_str_hex			(int nombre);
		std::string 		to_str_hex			(unsigned int nombre);
		std::string 		to_str_hex			(long unsigned int nombre);
		
		
		int 				to_int				(std::string nombre);
		unsigned int 		to_uint				(std::string nombre);
		long 				to_long				(std::string nombre);
		
		static int 			_kbhit				(void);
		
		unsigned short 		Generer_CheckSum	(void* TRAME, size_t Taille);
		long 				Comparer_Temps 		(struct timeval *Temps_DEPART, 
														struct timeval *Temps_ACTUEL);
		
		
		unsigned int 		get_MemoireLibre	();
	}
}