
extern "C" void cpc_SCREEN(int mode);
extern "C" void cpc_COLOR(int police, int fond);

namespace cpinti
{
	namespace interception
	{ 
		static struct sigaction instance_SigAction[12] = {};

		bool initialise_interception_exception	();
		void Erreur_Fatale_Signal				(int signalnum);
		void Erreur_Fatale						(int signalnum, int ligne, char* fichier, char* fonction);
		
		void Error_Logo();
		void Error_Finalise();
		
		// void Erreur_Fatale(int signalnum, char const * NomMethode);

	}
} // namespace cpinti