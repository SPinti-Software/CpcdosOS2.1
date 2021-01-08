
extern "C" void cpc_SCREEN(long mode);
extern "C" void cpc_COLOR(long police, int fond);

namespace cpinti
{
	namespace interception
	{ 
		static struct sigaction instance_SigAction[12] = {};

		bool initialise_interception_exception	();
		void Erreur_Fatale_Signal				(long signalnum);
		void Erreur_Fatale						(long signalnum, long ligne, char* fichier, char* fonction);
		
		void Error_Logo();
		void Error_Finalise();
		
		// void Erreur_Fatale(long signalnum, char const * NomMethode);

	}
} // namespace cpinti