## Comment communiquer avec la VM CpcDos à l'aide d'un 'Pipe'

### Prérequis

* [Une VM CpcDos ".ova"](https://cpcdos.net/fr/download)
* [VM-Viewer (VmWare)](https://github.com/VLiance/VW_Viewer)
* [CWC](https://github.com/VLiance/Cwc)

***

1.-Lancer le .ova avec VM-Viewer

2.-Ouvrir la librarie

![Library img](1.png)


3.-Ouvrir la configuration

![Settings img](2.png)


4.-Ajouter un composant hardware

![Add img](3.png)


5.-Sélectionner le "Serial Port"

![Serial Port img](4.png)


6.- Utiliser un "named pipe", la VM comme serveur, avec une application comme client. Le nom doit obligatoirement commencer par **\\\\.\pipe\**

Ici, on va utiliser le nom "cwc_pipe", ce qui donne: **\\\\.\pipe\cwc_pipe**

![Serial Port img](5.png)

7. Voilà, valider les changement et le port de communication est prêt!


### Rediriger le output de CpcDos

1. Lancer la VM 
2. Dans la console CpcDos, executer les commandes suivantes:

```
SYS/ /DEBUG /COM /INIT
SYS/ /DEBUG = 1
SYS/ /DEBUG /CPINTICORE = 1
SYS/ /DEBUG /COM1 = 2
```
Ceci active et redirige le debug vers le COM1

### Activer le pipe sous CWC

1. Lancer CWC

2. Executer la commande "-p" (le 'Named pipe' par défaut est **cwc_pipe**)

3. Le message suivant devrait s'afficher lors de la connection
