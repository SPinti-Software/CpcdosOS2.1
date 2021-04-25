
namespace cpinti
{

	namespace net
	{
		
		long cpinti_ping_icmp						(const char *IP_machine, const char* Message, long Param);
		long cpinti_serveur							(unsigned long NumPort, long NombreClients, unsigned long NumeroID, long TYPE_SERVEUR);
		long cpinti_client							(const char* Adresse, unsigned long NoPort, unsigned long NumeroID, long TYPE_SERVEUR);
	}
}