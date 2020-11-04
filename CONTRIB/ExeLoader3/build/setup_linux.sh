#!/bin/bash


#### Build dosemu2
wget https://github.com/stsp/dosemu2/archive/2.0pre8.tar.gz
tar -xvf 2.0pre8.tar.gz

cd dosemu2-2.0pre8
wget http://downloads.sourceforge.net/sourceforge/dosemu/dosemu-freedos-1.0-bin.tgz
./autogen.sh
./default-configure
make
sudo make install
cd ..

rm -rf ~/.dosemu
yes | dosemu -dumb -quiet -E exitemu

#### Install DJGPP
mkdir -p ~/.dosemu/drive_c/djgpp
wget http://na.mirror.garr.it/mirrors/djgpp/current/v2/djdev205.zip
wget http://na.mirror.garr.it/mirrors/djgpp/current/v2gnu/bnu232b.zip
wget http://na.mirror.garr.it/mirrors/djgpp/current/v2gnu/gcc920b.zip
wget http://na.mirror.garr.it/mirrors/djgpp/current/v2gnu/gpp920b.zip
wget http://na.mirror.garr.it/mirrors/djgpp/current/v2gnu/mak421b.zip

unzip djdev205.zip -d ~/.dosemu/drive_c/djgpp
unzip bnu232b.zip -d ~/.dosemu/drive_c/djgpp
unzip gcc920b.zip -d ~/.dosemu/drive_c/djgpp
unzip gpp920b.zip -d ~/.dosemu/drive_c/djgpp
unzip mak421b.zip -d ~/.dosemu/drive_c/djgpp