
namespace cpinti
{

	namespace net
	{
		
		long cpinti_ping_icmp						(const char *IP_machine, const char* Message, long Param);
		long cpinti_serveur							(unsigned long NumPort, long NombreClients, unsigned long NumeroID, long TYPE_SERVEUR);
		long cpinti_client							(const char* Adresse, unsigned long NoPort, unsigned long NumeroID, long TYPE_SERVEUR);
		
		
		/**** STATISTIQUES RESEAUX ****/
		static bool cpinti_del_net_info				(unsigned long NoPort);
		static bool cpinti_add_net_info				(unsigned long NoPort);
		static bool cpinti_set_net_info				(unsigned long NoPort, unsigned long pkt_recu, unsigned long pkt_envoye, unsigned long activite, unsigned long clients);
		unsigned long cpinti_get_net_info			(unsigned long NoPort, unsigned long _inf);

		static unsigned long cpinti_get_net_envoye	();
		static unsigned long cpinti_get_net_recu		();
		static unsigned long cpinti_get_net_machines	();
		static unsigned long cpinti_get_net_activite	();
		/**-- STATISTIQUES RESEAUX --**/
	}
}