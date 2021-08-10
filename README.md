# Cpcdos OS2.1 co-kernel source code.

![](https://cpcdos.net/user/themes/cpcdos/images/logo.png)

This is officially the source code for the OSx Cpcdos kernel.
This version will be maintained until [OS2.2](https://github.com/SPinti-Software/CpcdosOS2.2) is ready. (Without FreeDos)

Created on 15 July 2011.
Source code officially released on 09 January 2021.

#### Information
The project has been cleaned up, all **prototype elements** that no longer work such as boot, GDT, low memory management ...etc, have been swept from the project! Our apologies if there are any bits or comments like this left in the code or any copyrighted bits, you can skip it. The OS2.1 version will finally stay focused on top of FreeDOS. While OS2.2 will be developed without FreeDos_.

Platform  | Build Status
 --- | --- 
Windows | [![Build status](https://ci.appveyor.com/api/projects/status/nfkdxmis9s2s4d4s?svg=true)](https://ci.appveyor.com/project/Maeiky/cpcdosos2-1)

## How to contribute
- Create a fork of the repository on your GitHub account.
- Make your contribution while testing if it works (see the paragraph on compilation below).
- Make a push of your changes to your fork.
- Create a pull-request via your fork. AppVeyor will test to see if everything is fine. The repository owner will check and, if all is well, merge your contribution as soon as possible!

## How to compile
 - Download and install the latest version of [CWC](https://github.com/VLiance/Cwc)
 - Then simply run the `OS2.1\_Make_CpcDos_.cwMake` _associated with CWC_ file
 - Make sure you have a [editable] virtual machine (https://github.com/VLiance/VW_Viewer) or a bootable USB Cpcdos device (Cpcdos Tutorial [No1](https://www.youtube.com/user/cpcdososx) [No2](https://www.youtube.com/channel/UCkFCPxJF7ZzmWxW4i5WavCA/videos))
 It is recommended to use [VMware workstation player 16](https://my.vmware.com/fr/web/vmware/downloads/details?downloadGroup=PLAYER-1610&productId=1039&rPId=55794) and not to have the pro version installed on your machine, as you may have less options to configure your network card.
   Feel free to use an old cpcdos VM already configured to update it.
 - Simply copy the newly generated `CPCLDR.EXE` file into your `CPCDOS` directory
 - Run it with your OS !
 
## How to participate in the project
Join the [Cpcdos discord](https://discord.com/invite/3Qm8xDp)

## Official links
- [Website - cpcdos.net](https://cpcdos.net)
- [Forum - developpez.net](https://www.developpez.net/forums/f2044/systemes/autres-systemes/cpcdos)

## Update
- From the [website](https://cpcdos.net) above.
- Directly from your CpcdosC+ console: `sys/ /update-get-install`

## Developer(s)
 - Sébastien FAVIER - Designer of Cpcdos since 2011 - Daddy of CraftyOS & GoatOS
 
### Main contributors
 - Mickael BANVILLE ([Maeiky](https://github.com/Maeiky)) - Main SDK contributor (CWC, ExeLoader, OpenGL / GZE, VM-Viewer).
 - Simon MICHENAUD ([SimonDevelop](https://www.simon-micheneau.fr/about)) - Main backend integrator of the website.
 - Esteban CADIC ([Estylo](https://systeme.developpez.com/actu/97935/Apprendre-a-integrer-Cpcdos-Raspberry-Pi-Arduino-une-proposition-de-Estylos/)) - Main moderator of the [Discord group](https://discord.com/invite/3Qm8xDp)

### Ultima testers & OS Cpcdos developers
 - Léo VACHET - A CraftyOS/GoatOS daddy
 - Timothée LUSSIAUD - Another CraftyOS/GoatOS daddy
 - Meaxy - ElieOS
 - Chrapati - Hexac System
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

[The rest here](https://cpcdos.net/fr/contributors)

Most of the above systems are open source_.

### Acknowledgements & Contributions
 - [Keyboard-Slayer](https://github.com/Keyboard-Slayer)
 - [Monax](https://github.com/sleepy-monax)
 - [d0p1](https://github.com/d0p1s4m4)
 - [alexbelm48](https://github.com/alexbelm48)
 - [PolentesAxel](https://github.com/PolentesAxel)
 - [supercyp](https://github.com/Supercip971)
 
_Contributor & ex-contributor members, if your name is missing, feel free to add or modify your nickname_.
