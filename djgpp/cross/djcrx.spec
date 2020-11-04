Name: djcrx
Summary:  DJGPP C library and some tools Linux to i586-pc-msdosdjgpp cross-compiler
Version: 2.05
Release: 5
License: http://www.delorie.com/djgpp/dl/ofc/simtel/v2/copying.dj
Group: Development/Tools
URL: http://www.delorie.com/djgpp/
Source0: djgpp-%{version}.tar.bz2

Buildroot: %{_tmppath}/%{name}-%{version}-%{release}-root

BuildRequires: gcc >= 4.0
BuildRequires: gcc-c++ >= 4.0
BuildRequires: perl
BuildRequires: djcross-binutils >= 2.22
BuildRequires: djcross-gcc >= 4.1.0

BuildArch: i686 x86_64

%description 
DJGPP C library and some tools (stubify, stubedit, dxe3gen and dxe3res)
for Linux to i586-pc-msdosdjgpp cross-compiler

%define debug_package %{nil}
%define __os_install_post %{nil}

%prep 
rm -rf djgpp
%setup -q -n djgpp
pwd

%build 
cd src
rm -f gcc.opt
make

cd ../distrib
gcc -O2 nobins.c -o nobins
mkdir -p ../zips ../manifest
TMPDIR=/tmp perl mkdist

cd ../src/utils
gcc -O2 -s dtou.c -o ../../hostbin/dtou
gcc -O2 -s utod.c -o ../../hostbin/utod

cd ../../distrib
mkdir crx
cd crx
unzip ../../zips/djcrx205.zip
cd src/stub
gcc -O2 stubify.c -o ../../../../hostbin/stubify
gcc -O2 stubedit.c -o ../../../../hostbin/stubedit
cd ../dxe
make -f makefile.dxe clean
make -f makefile.dxe
cp -p dxe3gen ../../../../hostbin/dxe3gen
cp -p dxe3res ../../../../hostbin/dxe3res
cd ../../../../

%install 
export STRIP=/bin/true
pwd
rm -fr %{buildroot}
mkdir -p %{buildroot}%{_prefix}/bin
mkdir -p %{buildroot}%{_prefix}/i586-pc-msdosdjgpp/sys-include
mkdir -p %{buildroot}%{_prefix}/share/doc/%{name}-%{version}
cp -rp distrib/crx/include/* %{buildroot}%{_prefix}/i586-pc-msdosdjgpp/sys-include/
cp -rp distrib/crx/lib %{buildroot}%{_prefix}/i586-pc-msdosdjgpp/
cp -p hostbin/stubify %{buildroot}%{_prefix}/bin/
cp -p hostbin/stubedit %{buildroot}%{_prefix}/bin/
cp -p hostbin/dxe3gen %{buildroot}%{_prefix}/bin/
ln -s dxe3gen %{buildroot}%{_prefix}/bin/dxegen
cp -p hostbin/dxe3res %{buildroot}%{_prefix}/bin/
cp -p copying* readme.1st %{buildroot}%{_prefix}/share/doc/%{name}-%{version}/
cp -p hostbin/dtou hostbin/utod %{buildroot}%{_prefix}/bin

mkdir -p %{buildroot}/tmp/djgpp-dist
cp -p zips/copying* zips/*.zip zips/readme* %{buildroot}/tmp/djgpp-dist/

%clean 
rm -fr %{buildroot}

%files 
%defattr(-,root,root) 
%doc copying copying.dj copying.lib readme.1st 
%{_prefix}/bin/*
%{_prefix}/i586-pc-msdosdjgpp/*
%{_prefix}/share/doc/*

%package -n djgpp-dist
Summary: DJGPP distribution packages (not for Linux, but packaged anyway)
Group: Development/Tools

%description -n djgpp-dist
Package with DJGPP distribution packages built with cross-compiler together
with copying* and readme files.

%files -n djgpp-dist
/tmp/djgpp-dist/*

%changelog
* Sun Oct 18 2015 Andris Pavenis <andris.pavenis@iki.fi> 2.05-5
- Rebuild DJGPP v2.05 with latest updates

* Sun Aug 30 2015 Andris Pavenis <andris.pavenis@iki.fi> 2.05-4
- Rebuild DJGPP v2.05 with latest updates

* Sun Jul 19 2015 Andris Pavenis <andris.pavenis@iki.fi> 2.05-3
- Rebuild DJGPP v2.05 with latest updates

* Thu Jul  2 2015 Andris Pavenis <andris.pavenis@iki.fi> 2.05-2
- Rebuild DJGPP v2.05 with latest updates

* Fri Jun 26 2015 Ozkan Sezer <sezeroz@gmail.com>
- Add dxe3gen and dxe3res

* Mon Jun  8 2015 Andris Pavenis <andris.pavenis@iki.fi> 2.05-1
- DJGPP V2.05
- Add dxe3gen and dxe3res

* Mon May  4 2015 Andris Pavenis <andris.pavenis@iki.fi>
- DJGPP V2.05 beta 1

* Sat Feb 15 2014 Andris Pavenis <andris.pavenis@iki.fi>
- Update to CVS 20140215 version

* Wed Jan  1 2014 Andris Pavenis <andris.pavenis@iki.fi>
- Update to CVS 20140101 version

* Sun Dec 29 2013 Andris Pavenis <andris.pavenis@iki.fi>
- Update to CVS 20131229 version

* Mon Dec  9 2013 Andris Pavenis <andris.pavenis@iki.fi>
- Update to CVS 20131209 version

* Wed Oct 16 2013 Andris Pavenis <andris.pavenis@iki.fi>
- Update to CVS 20131016 version

* Thu Aug 29 2013 Andris Pavenis <andris.pavenis@iki.fi>
- Update to CVS 20130829 version

* Mon May  7 2012 Andris Pavenis <andris.pavenos@iki.fi>
- Update to CVS 20120507 version

* Sat Mar 24 2012 Andris Pavenis <andris.pavenos@iki.fi>
- Update to CVS 20120324 version

* Sat Sep 13 2008 Andris Pavenis <andris.pavenis@iki.fi>
- Update to CVS 20080913 version

* Sat May 24 2008 Andris Pavenis <andris.pavenis@iki.fi>
- Update to CVS 20080524 version

* Thu May  1 2008 Andris Pavenis <andris.pavenis@iki.fi>
- Update for gcc-4.3.0

* Sun Oct 21 2007 Andris Pavenis <andris.pavenis@iki.fi>
- Updated compiler options for host tools to always build 32 bit executables.
- Fixed version detection of GNU assembler for target (should now support all recent
  binutils versions up to 2.18 including.
- Updated to 2007/10/21 CVS version

* Mon Jul 23 2007 Andris Pavenis <andris.pavenis@iki.fi>
- Updated to 2007/07/23 CVS version and rebuilt

* Thu Jun 28 2007 Andris Pavenis <andris.pavenis@iki.fi>
- Build from CVS source archive (with patches from Markus F.X.J. Oberhumer <markus@oberhumer.com>)
- Fix bug (incorrect test for NULL in chdir.c).
- Build also dtou and utod for host.
- Put all host utility executables in %{prefix}/bin instead of 
  %{prefix}/i586-pc-msdosdjgpp/bin.
- Put DJGPP binary packets into separate RPM package (not really for installation,
  but to have them). Currently files are put into directory /tmp/djgpp-dist.

* Tue Mar 13 2007 Gordon Schumacher <whiplash@pobox.com>
- Updated to use RPM's prefix macros

* Mon Nov 21 2005 Andris Pavenis <pavenis@latnet.lv>
- Some small updates 

* Tue Nov 15 2005 Andris Pavenis <pavenis@latnet.lv>
- Initial version of rpm spec file for DJGPP libc and some included tools (based on djcrx204 beta)
