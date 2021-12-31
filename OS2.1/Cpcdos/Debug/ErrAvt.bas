' Moteur/SHELL CpcdosC+ - Interpreteur commandes

' Par Sebastien FAVIER
' Reecriture le 19/01/2017
' Mise a jour le 16/10/2018

#include "cpcdos.bi"

#define _scope do
#define _end_scope loop while 0

#print
#print ============ Erreurs ==============
#print * Codes d erreurs

Function ERRAVT(Erreur as string, P2 as integer) as string
	REM Cette fonction retourne les No d'erreurs
	REM 	Erreur	--> Nom/numero d'erreur ex:ERR_023  ou AVT_045
	REM		P2		--> Null
	REM Retour --> STRING:Message d'erreur 

	dim TXTERREUR as string = "Aucune erreur"
_scope
	
	IF INSTR(Erreur, "AVT_") > 0 THEN ' Avertissements
		IF INSTR(Erreur, "000") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, inconnu.."
			ELSE
				TXTERREUR = "Unknown warning.."
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "001") > 0 THEN
			TXTERREUR = "Avertissement, M�moire, D�passement des limites m�moire attribu�. Pour executer votre application, fermez quelques fenetres"
			exit _scope
		END if
		IF INSTR(Erreur, "002") > 0 THEN
			TXTERREUR = "Avertissement, M�moire insuffisante pour executer cette action."
			exit _scope
		END if
		IF INSTR(Erreur, "003") > 0 THEN
			TXTERREUR = "Avertissement, Non definit"
			exit _scope
		END if
		IF INSTR(Erreur, "004") > 0 THEN
			TXTERREUR = "Avertissement, Longeur chaine du nom de la variable d�pass� (35 octets)"
			exit _scope
		END if
		IF INSTR(Erreur, "005") > 0 THEN
			TXTERREUR = "Avertissement, Longueur chaine de la variable d�pass� (255 000 Octets)"
			exit _scope
		END if
		IF INSTR(Erreur, "006") > 0 THEN
			TXTERREUR = "Avertissement, Cr�ation d'objet non d�clar�"
			exit _scope
		END if
		IF INSTR(Erreur, "007") > 0 THEN
			TXTERREUR = "Avertissement, Creation d'objet non ferm�"
			exit _scope
		END if
		IF INSTR(Erreur, "008") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, Variable introuvable"
			ELSE
				TXTERREUR = "Warning, variable not found"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "009") > 0 THEN
			TXTERREUR = "Avertissement, mode IUG requis."
			exit _scope
		END if
		IF INSTR(Erreur, "010") > 0 THEN
			TXTERREUR = "Avertissement, mode LC requis."
			exit _scope
		END if
		IF INSTR(Erreur, "011") > 0 THEN
			TXTERREUR = "Avertissement, Syst�me d'Op�ration non d�clar� !"
			exit _scope
		END if
		IF INSTR(Erreur, "012") > 0 THEN
			TXTERREUR = "Avertissement, Nom de fen�tre existante"
			exit _scope
		END if
		IF INSTR(Erreur, "013") > 0 THEN
			TXTERREUR = "Avertissement, Nom de bouton existant"
			exit _scope
		END if
		IF INSTR(Erreur, "014") > 0 THEN
			TXTERREUR = "Avertissement, Nom de label existant"
			exit _scope
		END if
		IF INSTR(Erreur, "015") > 0 THEN
			TXTERREUR = "Avertissement, Nom d'imagebox existant"
			exit _scope
		END if
		IF INSTR(Erreur, "016") > 0 THEN
			TXTERREUR = "Avertissement, Nom de textebox existant"
			exit _scope
		END if
		IF INSTR(Erreur, "017") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, si/ : L'expression entre guillemets " & CHR(34) & CHR(34) & " est manquante. (ex: si/ " & CHR(34) & "valeur1" & CHR(34) & " = " & CHR(34) & "valeur2" & CHR(34) & " alors: ...."
			Else
				TXTERREUR = "Warning, if/ : Expression in double quotes " & CHR(34) & CHR(34) & " is missing. (ex: si/ " & CHR(34) & "value1" & CHR(34) & " = " & CHR(34) & "value2" & CHR(34) & " then: ...."
			End if
			exit _scope
		END if
		IF INSTR(Erreur, "018") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, si/ : la condition est manquante ou inconnue. (Utilisez: =, !=, <, !<, >, !>, <=, !<=, >=, !>=)"
			Else
				TXTERREUR = "Warning, if/ : Missing or unknown condition. (Use: =, !=, <, !<, >, !>, <=, !<=, >=, !>=)"
			End if
			exit _scope
		END if
		IF INSTR(Erreur, "019") > 0 THEN
			TXTERREUR = "Avertissement, si/ : l'op�rateur est manquant"
			exit _scope
		END if
		IF INSTR(Erreur, "020") > 0 THEN
			TXTERREUR = "Avertissement, FIN/ SI sans SI/"
			exit _scope
		END if
		IF INSTR(Erreur, "021") > 0 THEN
			TXTERREUR = "Avertissement, Nom de compteur existant"
			exit _scope
		END if
		IF INSTR(Erreur, "022") > 0 THEN
            TXTERREUR = "Avertissement, Le nom n'a pas pu �tre r�solu"
			exit _scope
		END if
		IF INSTR(Erreur, "023") > 0 THEN
            TXTERREUR = "Avertissement, Aucun pilote de la carte r�seau est install�"
			exit _scope
		END if
		IF INSTR(Erreur, "024") > 0 THEN
            TXTERREUR = "Avertissement, Pas de r�ponse"
			exit _scope
		END if
		IF INSTR(Erreur, "025") > 0 THEN
            TXTERREUR = "Avertissement, R�pertoire r�seau non disponible"
			exit _scope
		END if
		IF INSTR(Erreur, "026") > 0 THEN
             TXTERREUR = "Avertissement, Lecteur r�seau introuvable"
			exit _scope
		END if
        IF INSTR(Erreur, "027") > 0 THEN
			TXTERREUR = "Avertissement, Lecteur non specifi�"
			exit _scope
		END if
		IF INSTR(Erreur, "028") > 0 THEN
			TXTERREUR = "Avertissement, non definit"
			exit _scope
		END if
        IF INSTR(Erreur, "029") > 0 THEN
			TXTERREUR = "Avertissement, D�passement des limites fix�s"
			exit _scope
		END if
		IF INSTR(Erreur, "030") > 0 THEN
			TXTERREUR = "Avertissement, l'image JPG utilise l'espace de couleur YCbCr ne peux etre mis en oeuvre"
			exit _scope
		END if
		IF INSTR(Erreur, "031") > 0 THEN
			TXTERREUR = "Avertissement, l'image JPG utilise l'espace de couleur CMYK ne peux etre mis en oeuvre"
			exit _scope
		END if
		IF INSTR(Erreur, "032") > 0 THEN
			TXTERREUR = "Avertissement, l'image JPG utilise l'espace de couleur YCCK ne peux etre mis en oeuvre"
			exit _scope
		END if
		IF INSTR(Erreur, "033") > 0 THEN
			TXTERREUR = "Avertissement, l'image JPG utilise l'espace de couleur inconnue"
			exit _scope
		END if
		IF INSTR(Erreur, "034") > 0 THEN
			TXTERREUR = "Avertissement, bloc de m�moire DOS libre �chou�"
			exit _scope
		END if
		IF INSTR(Erreur, "035") > 0 THEN
			TXTERREUR = "Avertissement, impossible d'obtenir les ID du media"
			exit _scope
		END if
		IF INSTR(Erreur, "036") > 0 THEN
			TXTERREUR = "Avertissement, erreur de simulation d'interruption RM"
			exit _scope
		END if
		IF INSTR(Erreur, "037") > 0 THEN
			TXTERREUR = "Avertissement, allocation �chou�e"
			exit _scope
		END if
		IF INSTR(Erreur, "038") > 0 THEN
			TXTERREUR = "Avertissement, lecteur non disponible"
			exit _scope
		END if
		IF INSTR(Erreur, "039") > 0 THEN
			TXTERREUR = "Avertissement, service introuvable"
			exit _scope
		END if
		IF INSTR(Erreur, "040") > 0 THEN
			TXTERREUR = "Avertissement, aucun service en ex�cution"
			exit _scope
		END if
		IF INSTR(Erreur, "041") > 0 THEN
			TXTERREUR = "Avertissement, nom de barre de progression existant"
			exit _scope
		END if
		IF INSTR(Erreur, "042") > 0 THEN
			TXTERREUR = "Avertissement, structure d'�v�nement du fichier incorecte"
			exit _scope
		END if
		IF INSTR(Erreur, "043") > 0 THEN
			TXTERREUR = "Avertissement, impossible de lire l'entete"
			exit _scope
		END if
		IF INSTR(Erreur, "044") > 0 THEN
			TXTERREUR = "Avertissement, png_sig_cmp() non disponible"
			exit _scope
		END if
		IF INSTR(Erreur, "045") > 0 THEN
			TXTERREUR = "Avertissement, png_create_read_struct() non disponible"
			exit _scope
		END if
		IF INSTR(Erreur, "046") > 0 THEN
			TXTERREUR = "Avertissement, png_create_info_struct() non disponible"
			exit _scope
		END if
		IF INSTR(Erreur, "047") > 0 THEN
			TXTERREUR = "Avertissement, des threads ne repondent pas."
			exit _scope
		END if
		IF INSTR(Erreur, "048") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, Vous devez espacer '=' ou votre variable de ce type: fix/ variable = contenu. A savoir: Les nom de variables contenant " & CHR(34) & "_, ., -, $, /, \, (, ), [, ], ~, &, #, ^, @" & CHR(34) & " sont autorises"
			ELSE
				TXTERREUR = "Warning, You must spacing '=' or your variable -> example: set/ variable = content. To know: Variable names contenting " & CHR(34) & "_, ., -, $, /, \, (, ), [, ], ~, &, #, ^, @" & CHR(34) & " are authorized"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "049") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, Vous devez espacer '/S' et votre nom variable de ce type: fix/ /s variable"
			ELSE
				TXTERREUR = "Warning, You must spacing '/S' and your variable name as : set/ /s variable"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "050") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, vous ne pouvez pas cr�er une variable en la supprimant, STOP DRINKING :-P"
			ELSE
				TXTERREUR = "Warning, hm.. you can't delete AND create a variable, STOP DRINKING :-P"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "051") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, Vous devez uniquement specifier un nombre comme 1, 2, 3, 4, ou 5"
			ELSE
				TXTERREUR = "Warning, You must indicate a number as 1, 2, 3, 4, or 5"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "052") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, Vous devez espacer '=' de ce type: ccp/ /fix.niveau = {nombre 1-5}"
			ELSE
				TXTERREUR = "Warning, You must spacing '=' as: ccp/ /set.level = {number 1-5}"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "053") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, Vous devez espacer '&' de ce type: exe/ & MonProgramme.cpc"
			ELSE
				TXTERREUR = "Warning, You must spacing '&' as: exe/ & MyProgram.cpc"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "054") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, gestionnaire des polices d�sactiv�. Executez: SYS/ /POLICE /ACTIVER"
			ELSE
				TXTERREUR = "Warning, font manager disable. Enter: SYS/ /FONT /ENABLE"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "055") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, Vous etes en mode DosBox"
			ELSE
				TXTERREUR = "Warning, DosBox mode is enable"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "056") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, Vous devez espacer '/S' et votre nom variable de ce type: fix/ /s variable"
			ELSE
				TXTERREUR = "Warning, You must spacing '/S' and your variable name as : set/ /s variable"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "057") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, caractere non autorise"
			ELSE
				TXTERREUR = "Warning, unautorized character"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "058") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, vous devez specifier un numero de couleur entre 16, 24 ou 32"
			ELSE
				TXTERREUR = "Warning, you must specify 16, 24 or 32 color number"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "059") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, vous devez specifier une resolution de ce type '1024x768'"
			ELSE
				TXTERREUR = "Warning, you must speficy a screen resolution like '1024x768'"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "060") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, vous devez specifier une resolution de ce type '1024x768x16' (x16 s'il s'agit de 16 bits de couleurs)"
			ELSE
				TXTERREUR = "Warning, you must speficy a screen resolution like '1024x768x16' (x16 if it's 16 bits of colors)"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "061") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, vous devez specifier un nom de protocole"
			ELSE
				TXTERREUR = "Warning, you must specity a protocol name"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "062") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, vous devez specifier la FunctionID superieur a 0"
			ELSE
				TXTERREUR = "Warning, you must speficy the FunctionID greater than 0"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "063") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, FunctionID non disponible"
			ELSE
				TXTERREUR = "Warning, FunctionID not avaiable"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "064") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, vous ne pouvez pas declarer une fonction inferieur au niveau 3"
			ELSE
				TXTERREUR = "Warning, you can't declare function inferior than level 3"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "065") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, l'inscription des proprietes graphiques doivent respecter la syntaxe du type : .PROPRIETE = " & CHR(34) & "valeur" & CHR(34) & ". Espaces et tabulations sont autorises"
			ELSE
				TXTERREUR = "Warning, graphical property registering must respect syntax as : PROPERTY = " & CHR(34) & "value" & CHR(34) & ". Spaces and tabs are allowed"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "066") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, vous devez d'abord declarer un objet graphique avant d'initialiser une propriete graphique"
			ELSE
				TXTERREUR = "Warning, you must first declare graphical object before initialize graphical property"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "067") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, vous ne pouvez pas creer un serveur d'administration en UDP. C'est risque!"
			ELSE
				TXTERREUR = "Warning, you can't create an UDP manager server. It's risked!"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "068") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, le numero de port est introuvable"
			ELSE
				TXTERREUR = "Warning, the port number is not found"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "069") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, le numero client TID est introuvable"
			ELSE
				TXTERREUR = "Warning, the TID client number is not found"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "070") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, impossible de creer un autre serveur"
			ELSE
				TXTERREUR = "Warning, unable to create another server"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "071") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, (DNS) impossible de resoudre le nom"
			ELSE
				TXTERREUR = "Warning, (DNS) unable to resolve name"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "072") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, mode avion active"
			ELSE
				TXTERREUR = "Warning, plane mode enabled"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "073") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, le nom d'un tableau doit etre identifie avec un '[' avant un ']'"
			ELSE
				TXTERREUR = "Warning, the array name must bu identifed with one '[' before ']'"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "074") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, le port COM est deja ouvert"
			ELSE
				TXTERREUR = "Warning, COM port is already opened"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "075") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, le port COM est deja ferme"
			ELSE
				TXTERREUR = "Warning, COM port is already closed"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "076") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, impossible d'ouvrir le port COM"
			ELSE
				TXTERREUR = "Warning, unable to open COM port"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "077") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, aucun numero d'identification definit"
			ELSE
				TXTERREUR = "Warning, no identification number defined"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "078") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, impossible d'identifier un objet ou une instance"
			ELSE
				TXTERREUR = "Warning, unable to identify object or instance"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "079") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, Fichier code en UTF-8. Convertissez-le en ANSI pour une meilleure compatibilite."
			ELSE
				TXTERREUR = "Warning, UTF-8 file. Please convert to ANSI format for best compatibilities."
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "080") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, Fichier code en UTF-16 BE. Convertissez-le en ANSI pour une meilleure compatibilite."
			ELSE
				TXTERREUR = "Warning, UTF-16 BE file. Please convert to ANSI format for best compatibilities."
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "081") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, Fichier code en UTF-16 LE. Convertissez-le en ANSI pour une meilleure compatibilite."
			ELSE
				TXTERREUR = "Warning, UTF-16 LE file. Please convert to ANSI format for best compatibilities."
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "082") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, memoire bitmap null"
			ELSE
				TXTERREUR = "Warning, bitmap memory null"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "083") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, vous ne pouvez pas utiliser d'autres parametres"
			ELSE
				TXTERREUR = "Warning, you can't using anothers parameters"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "084") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Avertissement, "
			ELSE
				TXTERREUR = "Warning, "
			END IF
			exit _scope
		END if
	END if
	
	rem ====================================================================
	
	IF INSTR(Erreur, "ERR_") > 0 THEN ' ERREURS
		IF INSTR(Erreur, "000") > 0 THEN
			TXTERREUR = "Erreur inconnu.. "
			exit _scope
		END if
		IF INSTR(Erreur, "001") > 0 THEN
			TXTERREUR = "Erreur, M�moire pleine."
			exit _scope
		END if
		IF INSTR(Erreur, "002") > 0 THEN
			TXTERREUR = "Erreur m�moire"
			exit _scope
		END if
		IF INSTR(Erreur, "003") > 0 THEN
			TXTERREUR = "Erreur d'application"
			exit _scope
		END if
		IF INSTR(Erreur, "004") > 0 THEN
			TXTERREUR = "Erreur, Conflit logiciel"
			exit _scope
		END if
		IF INSTR(Erreur, "005") > 0 THEN
			TXTERREUR = "Erreur, Conflit mat�riel"
			exit _scope
		END if
		IF INSTR(Erreur, "006") > 0 THEN
			TXTERREUR = "Erreur, Impossible d'�xecuter cette action."
			exit _scope
		END if
		IF INSTR(Erreur, "007") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Erreur, Param�tre invalide"
			ELSE
				TXTERREUR = "Error, invalid parameter"
			End if
			exit _scope
		END if
		IF INSTR(Erreur, "008") > 0 THEN
			TXTERREUR = "Erreur, Fenetre introuvable , verifiez vos param�tres"
			exit _scope
		END if
		IF INSTR(Erreur, "009") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Erreur, commande CpcdosC+ inconnue"
			ELSE
				TXTERREUR = "Error, unknown CpcdosC+ command"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "010") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then
				TXTERREUR = "Erreur de syntaxe"
			ELSE
				TXTERREUR = "Syntax error"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "011") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Erreur fatale"
			ELSE
				TXTERREUR = "Fatal error"
			END IF
			
			exit _scope
		END if
		IF INSTR(Erreur, "012") > 0 THEN
			TXTERREUR = "Erreur fatale ,le thread est introuvable !" + chr(11) + "Veuillez faire un diagnostique de la m�moire RAM.."
			exit _scope
		END if
		IF INSTR(Erreur, "013") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Erreur, Label sp�cifi� introuvable"
			ELSE
				TXTERREUR = "Error, specified label not found"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "014") > 0 THEN
			TXTERREUR = "Erreur, Tableau d'initialisation SCI vide"
			exit _scope
		END if
		IF INSTR(Erreur, "015") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Erreur, Fichier non disponible"
			ELSE
				TXTERREUR = "Error, file not available"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "016") > 0 THEN
			TXTERREUR = "Erreur, Objet introuvable"
			exit _scope
		END if
		IF INSTR(Erreur, "017") > 0 THEN
			TXTERREUR = "Erreur, Erreur d'acc�s au registre"
			exit _scope
		END if
		IF INSTR(Erreur, "018") > 0 THEN
			TXTERREUR = "Erreur, Chemin d'acc�s registre introuvable"
			exit _scope
		END if
		IF INSTR(Erreur, "019") > 0 THEN
			TXTERREUR = "Erreur, Cl� registre introuvable"
			exit _scope
		END if
		IF INSTR(Erreur, "020") > 0 THEN
			TXTERREUR = "Erreur, Evenement introuvable"
			exit _scope
		END if
		IF INSTR(Erreur, "021") > 0 THEN
			TXTERREUR = "Erreur, Objet ou fenetre introuvable"
			exit _scope
		END if
		IF INSTR(Erreur, "022") > 0 THEN
			TXTERREUR = "Erreur, Format de fichier inconnu"
			exit _scope
		END if
		IF INSTR(Erreur, "023") > 0 THEN
            TXTERREUR = "Erreur, Adresse invalide"
			exit _scope
		END if
		IF INSTR(Erreur, "024") > 0 THEN
            TXTERREUR = "Erreur, La machine distante ne r�pond pas"
			exit _scope
		END if
		IF INSTR(Erreur, "025") > 0 THEN
            TXTERREUR = "Erreur, Le serveur DNS ne r�pond pas"
			exit _scope
		END if
		IF INSTR(Erreur, "026") > 0 THEN
            TXTERREUR = "Erreur, Service indisponible"
			exit _scope
		END if
        IF INSTR(Erreur, "027") > 0 THEN
            TXTERREUR = "Erreur, machine introuvableintrouvable sur le r�seau"
			exit _scope                   
		END if
        IF INSTR(Erreur, "028") > 0 THEN
            TXTERREUR = "Erreur, Connexion au syst�me distant impossible"
			exit _scope
		END if
        IF INSTR(Erreur, "029") > 0 THEN
            TXTERREUR = "Erreur, Syst�me d'exploitation distant introuvable"
			exit _scope
		END if
        IF INSTR(Erreur, "030") > 0 THEN
            TXTERREUR = "Erreur, Machine distant introuvable"
			exit _scope
		END if
        IF INSTR(Erreur, "031") > 0 THEN
			TXTERREUR = "Erreur, Cl� non sp�cifi�e"
			exit _scope
		END if
		IF INSTR(Erreur, "032") > 0 THEN
			TXTERREUR = "Erreur, Impossible de cr�er le lecteur virtuel"
			exit _scope
		END if
		IF INSTR(Erreur, "033") > 0 THEN
			TXTERREUR = "Erreur, Impossible d'�crire"
			exit _scope
		END if
		IF INSTR(Erreur, "034") > 0 THEN
			TXTERREUR = "Erreur, la ressource n'est pas disponible"
			exit _scope
		END if
		IF INSTR(Erreur, "035") > 0 THEN
			TXTERREUR = "Erreur, Partage d�ja en diffusion"
			exit _scope
		END if
		IF INSTR(Erreur, "036") > 0 THEN
			TXTERREUR = "Erreur, aucun pilote reseau TCP/IP install�"
			exit _scope
		END if
		IF INSTR(Erreur, "037") > 0 THEN
			TXTERREUR = "Erreur, Num�ro de ligne hors limites"
			exit _scope
		END if
		IF INSTR(Erreur, "038") > 0 THEN
			TXTERREUR = "Erreur, impossible de fermer le processus, verifiez qu'un PID n'est pas dupliqu�"
			exit _scope
		END if
		IF INSTR(Erreur, "039") > 0 THEN
			TXTERREUR = "Erreur, ISR : impossible de verrouiller les donnees"
			exit _scope
		END if
		IF INSTR(Erreur, "040") > 0 THEN
			TXTERREUR = "Erreur, ISR : impossible de verrouiller la routine ISR"
			exit _scope
		END if
		IF INSTR(Erreur, "041") > 0 THEN
			TXTERREUR = "Erreur, ISR : La routine ISR n'a pas demarr�."
			exit _scope
		END if
		IF INSTR(Erreur, "042") > 0 THEN
			TXTERREUR = "Erreur, impossible d'initialiser la video, verifiez la compatibilite VGA / SVGA de votre carte graphique"
			exit _scope
		END if
		IF INSTR(Erreur, "043") > 0 THEN
			TXTERREUR = "Erreur, impossible d'arreter la routine"
			exit _scope
		END if
		IF INSTR(Erreur, "044") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Erreur, probleme de fermeture du processus"
			ELSE
				TXTERREUR = "Error, process closing problem"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "045") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Erreur, impossible de charger la police"
			ELSE
				TXTERREUR = "Error, cannot load font"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "046") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Erreur, impossible de charger l'image PNG"
			ELSE
				TXTERREUR = "Error, cannot load PNG picture"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "047") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Erreur, adresse non disponible"
			ELSE
				TXTERREUR = "Error, address not avaiable"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "048") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Erreur, (fatale) impossible d'instancier de nouveau CPinti Core"
			ELSE
				TXTERREUR = "Error, (fatal) unable to create a new CPinti Core instance"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "049") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Erreur, impossible d'initialiser l'IUG"
			ELSE
				TXTERREUR = "Error, unable to initialise the GUI"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "050") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Erreur, fonction CpcdosC+ introuvable!"
			ELSE
				TXTERREUR = "Error, CpcdosC+ function is missing!"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "051") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Erreur, le numero de port est deja utilise par un processus"
			ELSE
				TXTERREUR = "Error, port number is already used by an process"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "052") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Erreur, Oups probleme! La r�solution d'ecran n'a pas pu etre appliqu�e"
			ELSE
				TXTERREUR = "Error, Outch problem! The screen resolution can't be applied"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "053") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Erreur, probleme lors de l'ecriture du fichier"
			ELSE
				TXTERREUR = "Error, error during file writing."
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "054") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Erreur, lors de la configuration du socket reseau"
			ELSE
				TXTERREUR = "Error, during network socket configuration"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "055") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Erreur, lors du binding du socket reseau"
			ELSE
				TXTERREUR = "Error, during network socket binding"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "056") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Erreur, ecoute reseau impossible"
			ELSE
				TXTERREUR = "Error, not avaiable network listening"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "057") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Erreur, probleme descripteur de fichier"
			ELSE
				TXTERREUR = "Error, file descriptor problem"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "058") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Erreur, canal casse (ERRPIPE) redemarrez le serveur"
			ELSE
				TXTERREUR = "Error, broken canal (ERRPIPE) restart server"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "059") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Erreur, memoire insuffisante"
			ELSE
				TXTERREUR = "Error, low memory"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "060") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Erreur, pilote souris PS/2 ou USB (INTERRUPTION 0x33) introuvable ou non compatible"
			Else
				TXTERREUR = "Error, PS/2 or USB driver (INTERRUPTION 0x33) not found or not compatible"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "061") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Erreur, impossible de supprimer le fichier du peripherique"
			ELSE
				TXTERREUR = "Error, unable to deleting file from device"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "062") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Erreur, impossible de copier le fichier source"
			ELSE
				TXTERREUR = "Error, unable to copy source file"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "063") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Erreur, impossible de copier sur le fichier destination"
			ELSE
				TXTERREUR = "Error, unable to copy to the destination file"
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "064") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Erreur, impossible de lister le contenu du repertoire"
			ELSE
				TXTERREUR = "Error, unable to liste the directory content "
			END IF
			exit _scope
		END if
		IF INSTR(Erreur, "065") > 0 THEN
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 then 
				TXTERREUR = "Erreur, "
			ELSE
				TXTERREUR = "Error, "
			END IF
			exit _scope
		END if
	END if
_end_scope
	rem renvoyer le message d'erreur
	ERRAVT = Erreur & " -> " & TXTERREUR
END Function