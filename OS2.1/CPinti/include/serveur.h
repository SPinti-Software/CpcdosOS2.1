/* Entete serveur.cpp */

#include <sys/select.h>

namespace cpinti
{

	#define SRV_OK					0
	#define SRV_NO_REP				-1
	#define SRV_ERR_INIT_SOCK		-2
	#define SRV_ERR_CONFIG_SOCK		-3
	#define SRV_ERR_BIND_SOCK		-4
	#define SRV_ERR_ECOUTE_SOCK		-5
	#define SRV_ERR_FD				-6
	#define SRV_ERR_PIPE_SOCK		-7
	#define SRV_ERR_NOM_DNS			-8
	#define SRV_ERR_MEM				-9
	#define SRV_ERR_CREER_TRAME		-10
	#define SRV_NO_RES				-11
	#define SRV_ERR_TRANS			-12
	#define SRC_ERR_CLIENT			-13
	
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
	
	#define MSG_NOSIGNAL	0x4000 	// Ne pas generer un SIGPIPE.
	#define TCP_NODELAY     0x01
	
	#define ENOMSG          42      // Pas de message
	
	#define _DEFFERE_FERME	24		// Taille du tableau de sock pour la fermeture differes des sockets
	
	#define TailleBuffer 	16384
	#define MaxClientArray	64

	
	

	#define _w32_intel 		cpinti::Func_Cpinti::_w32_intel
	#define _w32_intel16 	cpinti::Func_Cpinti::_w32_intel16

	

	
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
	
	namespace net_server
	{
			void Fermer_socket(long SocketReseau);
			long Demarrer_serveur(unsigned long NumPort, long NombreClients, unsigned long _NumeroID, long _TYPE_SERVEUR);
			
		
	}
} 





