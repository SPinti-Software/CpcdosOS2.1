# Cpcdos OS2.1 co-kernel source code.

![](https://cpcdos.net/user/themes/cpcdos/images/logo.png)

Il s'agit bien officiellement du code source du co-noyau Cpcdos OSx.
Cette version sera maintenue à jour jusqu'à ce que la [version OS2.2](https://github.com/SPinti-Software/CpcdosOS2.2) sera prête. (Without FreeDos)

Créé le 15 Juillet 2011.
Code source publié officiellement le 09 Janvier 2021.

#### Informations
_Le projet à été nettoyé, tous les **elements prototype** qui ne fonctionnent plus tel que le boot, GDT, low memory management ...etc, ont étés balayés du projet! Nos excuses s'il reste des morceaux ou des commentaires s'apparentant à ceci dans le code ou bien des morceaux de copyright, vous pouvez y passer outre. La version OS2.1 va finalement rester axé au-dessus de FreeDOS. Pendant que la OS2.2 se développera sans FreeDos_


Platform  | Build Status
 --- | --- 
Windows | [![Build status](https://ci.appveyor.com/api/projects/status/nfkdxmis9s2s4d4s?svg=true)](https://ci.appveyor.com/project/Maeiky/cpcdosos2-1)

## Comment contribuer
- Créez un fork du dépôt sur votre compte GitHub.
- Faites votre contribution tout en testant si cela marche (allez voir le paragraphe sur la compilation ci-dessous).
- Faites un push de vos modifications sur votre fork.
- Créez une pull-request via votre fork. AppVeyor fera des tests pour voir si tout va bien. Le propriétaire du dépôt se chargera de vérifier et, si tout va bien, de merge votre contribution dès que possible !

## Comment compiler
 - Téléchargez et installez la dernière version de [CWC](https://github.com/VLiance/Cwc)
 - Puis exécutez simplement le fichier `OS2.1\_Make_CpcDos_.cwMake` _associé à CWC_
 - Assurez-vous d'avoir une machine virtuelle [éditable](https://github.com/VLiance/VW_Viewer) ou un support USB bootable Cpcdos (Tuto Cpcdos [No1](https://www.youtube.com/user/cpcdososx) [No2](https://www.youtube.com/channel/UCkFCPxJF7ZzmWxW4i5WavCA/videos))
 Il est recommandé d'utiliser [VMware workstation player 16](https://my.vmware.com/fr/web/vmware/downloads/details?downloadGroup=PLAYER-1610&productId=1039&rPId=55794) et ne pas avoir installé la version pro sur votre machine, au risque d'avoir moins d'options de configuration de votre carte réseau.
   N'hésitez pas à utiliser une ancienne VM cpcdos déjà configurée pour la mettre à jour.
 - Copiez simplement le nouveau fichier généré `CPCLDR.EXE` dans votre répertoire `\CPCDOS`
 - Executez-le avec votre OS !
 
## Comment participer au projet
Rejoignez le [discord Cpcdos](https://discord.com/invite/3Qm8xDp)

## Liens officiel
- [Site web - cpcdos.net](https://cpcdos.net)
- [Forum - developpez.net](https://www.developpez.net/forums/f2044/systemes/autres-systemes/cpcdos)

## Mettre à jour
- Depuis le [site web](https://cpcdos.net) ci-dessus.
- Directement depuis votre console CpcdosC+ : `sys/ /update-get-install`

## Releases note
 - Nouveautes dans [Version.txt](https://github.com/SPinti-Software/CpcdosOS2.1/blob/dev/OS2.1/Cpcdos/Version.txt)

## Développeur(s)
 - Sébastien FAVIER - Concepteur de Cpcdos depuis 2011 - Papoune de CraftyOS & GoatOS
 
### Contributeurs principaux
 - Mickael BANVILLE ([Maeiky](https://github.com/Maeiky)) - Principal contributeur SDK (CWC, ExeLoader, OpenGL / GZE, VM-Viewer).
 - Meaxy - ElieOS - Expérimentations du système d'exploitation
 - Chrapati - Hexac System - Tutoriels et aides pour la communauté.

### Ultima testers & Développeurs d'OS Cpcdos
 - Léo VACHET - Un papoune de CraftyOS/GoatOS
 - Timothée LUSSIAUD - Un autre papoune de CraftyOS/GoatOS
 - Simon MICHENAUD ([SimonDevelop](https://www.simon-micheneau.fr/about)) - Principal intégrateur backend du site WEB.
 - Esteban CADIC ([Estylo](https://systeme.developpez.com/actu/97935/Apprendre-a-integrer-Cpcdos-Raspberry-Pi-Arduino-une-proposition-de-Estylos/)) - Principal modérateur du [groupe Discord](https://discord.com/invite/3Qm8xDp)
 - Nadir - MineOSX
 - PokeCraft - LeviathanOS
 - iplux - MaverickOS
 - FicelleYTB
 - Climax
 - D3nX
 - 04Kylian - FireFlyOS
 - Léo ENDOR
 - NiceY0mi - NoobOS
 - vip181

[Le reste ici](https://cpcdos.net/fr/contributors)

_La plupart des systèmes cités ci-dessus sont opensource_

### Remerciements & Contributions
 - [Keyboard-Slayer](https://github.com/Keyboard-Slayer)
 - [d0p1](https://github.com/d0p1s4m4)
 - [supercyp](https://github.com/Supercip971)
 - [Monax](https://github.com/sleepy-monax)
 - [alexbelm48](https://github.com/alexbelm48)
 - [PolentesAxel](https://github.com/PolentesAxel)
 
 
_Les membres contributeur & ex-contributeurs, s'il manque votre nom, n'hésitez pas à vous rajouter ou modifier votre pseudo_
