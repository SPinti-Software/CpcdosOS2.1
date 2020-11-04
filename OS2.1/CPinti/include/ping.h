/* Entete ping.cpp */

#include <sys/select.h>

namespace cpinti
{

	#define PING_OK					0
	#define PING_NO_REP				-1
	#define PING_ERR_INIT_SOCK		-2
	#define PING_ERR_CONFIG_SOCK	-3
	#define PING_ERR_BIND_SOCK		-4
	#define PING_ERR_ECOUTE_SOCK	-5
	#define PING_ERR_FD				-6
	#define PING_ERR_PIPE_SOCK		-7
	#define PING_ERR_NOM_DNS		-8
	#define PING_ERR_MEM			-9
	#define PING_ERR_CREER_TRAME	-10
	#define PING_NO_RES				-11
	#define PING_ERR_TRANS			-12
	
	#define REQUETE_ICMP	8			// ICMP echo
	#define CODE_ICMP		0			// Code ICMP
	#define CHECKSUM_ICMP	0			// Le checksum par defaut
	#define SEQUENCE_ICMP 	0			// Numero de sequence
	#define ID_ICMP 		2411	// Idetification de la trame par defaut

	
	#define MSG_DONTWAIT 0x40 		// IO non bloquant
	#define SO_SNDBUF	0x1001		// Envoyer la taille du buffer
	#define SO_RCVBUF	0x1002		// Recevoir la taille du buffer
	#define SO_SNDTIMEO	0x1005		// Envoyer un timeout */
	#define SO_RCVTIMEO	0x1006		// Recevoir un timeout */
	#define	SO_ERROR	0x1007		// Obtenir l'erreur et nettoyer
	#define	SO_TYPE		0x1008		// Obtenir le type de socket

	#define ENOMSG          42      // Pas de message
	
	#define _DEFFERE_FERME	24		// Taille du tableau de sock pour la fermeture differes des sockets

	
		//  0	: OK
		// 	-1 	: La machine n'a pas repondu
		//	-2	: Impossible de creer un socket (Driver manquant?)
		//	-3	: Erreur de configuration du socket 
		//	-4	: Erreur de binding
		//	-5	: Ecoute impossible
		//	-6	: Erreur de descripteur de fichier (select())
		//	-7	: Erreur de lecture de socket (ERRPIPE)
		//  -8	: Impossible de resoudre le nom (DNS)
		//	-9	: Memoire insuffisante
	
	namespace net_ping
	{
			void Fermer_socket(int SocketReseau);
			const char* Resolution_DNS(const char* NomAdresse, struct hostent* Sock_hostent);
			const char* Resolution_DNS (const char *NomAdresse);
			int ping(const char* AdresseIP, const char* Message, int Timeout);
			
		
	} /* net_ping */
} 





