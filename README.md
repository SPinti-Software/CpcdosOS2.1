# Cpcdos OS2.1 co-kernel source code.

![](https://cpcdos.net/user/themes/cpcdos/images/logo.png)

This is the official repository for the co-kernel Cpcdos OSx.
This version will be maintained until the release of version [OS2.2](https://github.com/SPinti-Software/CpcdosOS2.2). (Without FreeDos)

The repository was created on 15 July 2011.
The source code was officially released on 09 January 2021.

#### Information
The project has been cleaned up, all **prototype elements** that no longer work such as boot, GDT, low memory management ...etc, have been removed from the project! Our apologies if there are any bits or comments mentionning them in the code or any copyrighted parts, you can ignore them. This version runs on top of FreeDOS. This will be adjusted on the next major version (OS2.2)

Platform  | Build Status
 --- | --- 
Windows | [![Build status](https://ci.appveyor.com/api/projects/status/nfkdxmis9s2s4d4s?svg=true)](https://ci.appveyor.com/project/Maeiky/cpcdosos2-1)

## How to contribute
- Create a fork of the repository on your GitHub account.
- Make your contribution. Don't forget to test your code before commiting (see the paragraph on compilation below).
- Push your changes to your fork.
- Create a pull-request. AppVeyor will make sure that everything is fine. The repository owners will check if everything works as expected, if so, they'll merge your contribution as soon as possible!

## How to compile
 - Download and install the latest version of [CWC](https://github.com/VLiance/Cwc)
 - Then simply run `OS2.1\_Make_CpcDos_.cwMake` _associated with CWC_ file
 - Make sure you have an [editable] virtual machine (https://github.com/VLiance/VW_Viewer) or a bootable drive with Cpcdos installed (Cpcdos Tutorial [No1](https://www.youtube.com/user/cpcdososx) [No2](https://www.youtube.com/channel/UCkFCPxJF7ZzmWxW4i5WavCA/videos))
 It is recommended to use [VMware workstation player 16](https://my.vmware.com/fr/web/vmware/downloads/details?downloadGroup=PLAYER-1610&productId=1039&rPId=55794) make sure that you don't have the pro version on your machine, as you may have less options to configure your network card.
   Feel free to use an older Cpcdos VM already configured to make the update process easier.
 - Simply copy the newly generated `CPCLDR.EXE` file into your `CPCDOS` directory
 - Run it with your OS !
 
## How to participate in the project
Join the [Cpcdos discord](https://discord.com/invite/3Qm8xDp)

## Official links
- [Website - cpcdos.net](https://cpcdos.net)
- [Forum - developpez.net](https://www.developpez.net/forums/f2044/systemes/autres-systemes/cpcdos) :warning: the forum is in french :warning:

## Update
- From [our website](https://cpcdos.net).
- Directly from your CpcdosC+ console: `sys/ /update-get-install`

## Releases note
 - News into [Version.txt](https://github.com/SPinti-Software/CpcdosOS2.1/blob/master/OS2.1/Cpcdos/Version.txt)

## Developer(s)
 - Sébastien FAVIER - Designer of Cpcdos since 2011 - Father of CraftyOS & GoatOS
 
### Main contributors
 - Mickael BANVILLE ([Maeiky](https://github.com/Maeiky)) - Main SDK contributor (CWC, ExeLoader, OpenGL / GZE, VM-Viewer).
 - Meaxy - ElieOS and Operating system experimentations
 - Chrapati - Hexac System + Tutorials and help for the community 

### Ultima testers & OS Cpcdos developers
 - Léo VACHET - One of the father of CraftyOS/GoatOS
 - Timothée LUSSIAUD - Another father of CraftyOS/GoatOS
 - Simon MICHENAUD ([SimonDevelop](https://www.simon-micheneau.fr/about)) - Main backend integrator of the website.
 - Esteban CADIC ([Estylo](https://systeme.developpez.com/actu/97935/Apprendre-a-integrer-Cpcdos-Raspberry-Pi-Arduino-une-proposition-de-Estylos/)) - Main moderator of the [Discord group](https://discord.com/invite/3Qm8xDp)
 - 04Kylian - FireFlyOS
 - Nadir - MineOSX
 - PokeCraft - LeviathanOS
 - iplux - MaverickOS
 - FicelleYTB
 - Climax
 - D3nX
 - Léo ENDOR
 - NiceY0mi - NoobOS
 - vip181

[You can find a more complete list of the contributors here](https://cpcdos.net/fr/contributors)

Most of the above systems are open source.

### Acknowledgements & Contributions
 - [Keyboard-Slayer](https://github.com/Keyboard-Slayer)
 - [d0p1](https://github.com/d0p1s4m4)
 - [supercyp](https://github.com/Supercip971)
 - [Monax](https://github.com/sleepy-monax)
 - [alexbelm48](https://github.com/alexbelm48)
 - [PolentesAxel](https://github.com/PolentesAxel)
 
 
_Contributor & ex-contributor members, if your name is missing, feel free to add or modify your nickname_.
