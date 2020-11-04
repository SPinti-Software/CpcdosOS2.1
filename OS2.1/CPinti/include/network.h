
namespace cpinti
{

	namespace net
	{
		
		int cpinti_ping_icmp						(const char *IP_machine, const char* Message, int Param);
		int cpinti_serveur							(unsigned int NumPort, int NombreClients, unsigned int NumeroID, int TYPE_SERVEUR);
		int cpinti_client							(const char* Adresse, unsigned int NoPort, unsigned int NumeroID, int TYPE_SERVEUR);
		
		
		/**** STATISTIQUES RESEAUX ****/
		static bool cpinti_del_net_info				(unsigned int NoPort);
		static bool cpinti_add_net_info				(unsigned int NoPort);
		static bool cpinti_set_net_info				(unsigned int NoPort, unsigned int pkt_recu, unsigned int pkt_envoye, unsigned int activite, unsigned int clients);
		unsigned int cpinti_get_net_info			(unsigned int NoPort, unsigned int _inf);

		static unsigned int cpinti_get_net_envoye	();
		static unsigned int cpinti_get_net_recu		();
		static unsigned int cpinti_get_net_machines	();
		static unsigned int cpinti_get_net_activite	();
		/**-- STATISTIQUES RESEAUX --**/
	}
}