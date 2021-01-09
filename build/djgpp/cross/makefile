#
# Step 1: Choose the compile flags to use.
#
CFLAGS=-O3 -m486 -fno-strength-reduce
# CFLAGS= -O2

#
# Step 2: Choose where the binaries will be install
#
# Select a value for PREFIX.
#
# The support files will go in ${PREFIX}/lib/gcc-lib/i386-msdos-go32.
# The binaries will go in ${PREFIX}/bin/dos-${program} e.g.
#    ${PREFIX}/bin/dos-gcc, ${PREFIX}/bin/dos-stubedit, etc.
#
PREFIX=/usr/home/cgjks1/test


#
# Step 3: Tell me where to find the source code for gcc and binutils.
#
# This package has been tested with GCC 2.7.2 and BINTUILS 2.7.
# It make not work with later or earlier versions. 
#
# If you untar both gcc-2.7.2.tar.gz and binutils-2.7.tar.gz in the
# current directory then use the following paths.
#
GCCDIR=		./gcc-2.7.2
BINUTILSDIR=	./binutils-2.7


#
# Step 4: GCC version
#
# Which version of gcc are you using (it effects a path somewhere).
#
GCCVER=		2.7.2


#
# Step 4: Extra configure arguments for gcc and binutils.
#
# The extra arguments to give to ./configure when building gcc and
# binutils.
#
# In most cases there will be no extra arguments.  However, the current
# GNU tools don't recognise i686 as a processor and so on i686, Linux
# machines use "--host=i486-elf-linux" (which is recognised).
#
# Please refer to documentation in the gcc and the binutils directories.
#
EXTRA= --host=i486-elf-linux
#EXTRA=


#
# Step 5: Choose a compiler
#
# gcc and binutils will choose a compiler in their configure scripts.
# The compiler defined here will be used to compile two programs in
# the DJGPP package.
#
CC=gcc


#
# You should not change anything below this line
#

SHELL=/bin/sh
LIBDIR=${PREFIX}/lib/gcc-lib/i386-go32-msdos/${GCCVER}
BINDIR=${LIBDIR}/bin
OFFICIALBIN=${PREFIX}/bin


all		: binutils gcc stub
		echo Done > /dev/null

binutils	:
		( cd ${BINUTILSDIR} ; \
		  ./configure --prefix=${PREFIX} ${EXTRA} \
			--target=i386-coff-go32 ; \
		  make CFLAGS="${CFLAGS}" )


gcc		:
		( cd ${GCCDIR} ; \
		  ./configure --prefix=${PREFIX} ${EXTRA} \
			--target=i386-go32-msdos ; \
		  make CFLAGS="${CFLAGS}" LANGUAGES=c | 2>&1 tee make.out \
			|| true )
		tail -2 ${GCCDIR}/make.out | grep "way to make libgcc1.a"
		echo That error was expected.  Make of gcc succeeded. \
			> /dev/null

stub		:
		${CC} ${CFLAGS} src/stub/stubify.c -o stubify
		${CC} ${CFLAGS} src/stub/stubedit.c -o stubedit

install		: install.pre install.binu install.gcc install.djgpp
		if [ ! -d ${OFFICIALBIN} ]; then \
		  ${GCCDIR}/install.sh -d ${OFFICIALBIN} -m 755 ; \
		fi
		for a in ${BINDIR}/* ; do  \
		  b=`basename $$a` ; \
		  rm -f ${LIBDIR}/$$b ; \
		  ln -s $$a ${LIBDIR}/$$b ; \
		  rm -f ${OFFICIALBIN}/dos-$$b ; \
		  ln -s $$a ${OFFICIALBIN}/dos-$$b ; \
		done

install.pre	:
		${GCCDIR}/install.sh -d ${BINDIR} -m 755
		${GCCDIR}/install.sh -d ${LIBDIR} -m 755

install.binu	:
		( cd ${BINUTILSDIR}/binutils ; \
		  ../install.sh -s -m 755 c++filt ${BINDIR} ; \
		  ../install.sh -s -m 755 objcopy ${BINDIR} ; \
		  ../install.sh -s -m 755 objdump ${BINDIR} ; \
		  ../install.sh -s -m 755 ar ${BINDIR} ; \
		  ../install.sh -s -m 755 size ${BINDIR} ; \
		  ../install.sh -s -m 755 nm.new ${BINDIR}/nm ; \
		  ../install.sh -s -m 755 strip.new ${BINDIR}/strip )
		( cd ${BINUTILSDIR}/gas ; \
		  ../install.sh -s -m 755 as.new ${BINDIR}/as  ; \
		  ../install.sh -s -m 755 gasp.new ${BINDIR}/gasp )
		( cd ${BINUTILSDIR}/ld ; \
		  ../install.sh -s -m 755 ld.new ${BINDIR}/ld )

install.gcc	:
		( cd ${GCCDIR} ; \
		  ./install.sh -s -m 755 xgcc ${BINDIR}/gcc ; \
		  ./install.sh -s -m 755 cc1 ${LIBDIR}/cc1 ; \
		  ./install.sh -s -m 755 cccp ${LIBDIR}/cpp )

install.djgpp	:
		cp ${GCCDIR}/install.sh .
		chmod 755 install.sh
		( cd lib ; \
		  for a in * ; do \
		    ../install.sh -m 755 $$a ${LIBDIR} ; \
		  done )
		find include -type d -print | xargs chmod 755
		find include -type f -print | xargs chmod 644
		chmod 755 include
		yes | cp -Rp include ${LIBDIR}
		./install.sh -m 755 -s stubedit ${BINDIR}
		./install.sh -m 755 -s stubify ${BINDIR}
