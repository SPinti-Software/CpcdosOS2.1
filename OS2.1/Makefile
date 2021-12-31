FBC = fbc
FBCFLAGS = 	-v					\
			-target dos			\
			-p FB/lib/dos		\
			-lang fb  			\
			-O 0	    		\
			-arch 486			\
			-t 16384			\
			-lib -d				\
			CPCDOSLIB=1			\
			-w all				\
			-maxerr 8			\
			-i ./Cpcdos/Include \
			-R					\
			-RR					\
			-g					\
			-gen gas			\
			-exx				\
			-l cpnti			\
			-l pthread			\
			-l stdcxx			\
			-l watt				\
			-l zip

BUILD_DIRECTORY := build
DIRECTORY_GUARD = @mkdir -p $(@D)
FBSRC = $(shell find ./Cpcdos -name "*.bas")
CPCLIB = LIBcpc.a

$(CPCLIB): $(FBSRC)
	$(FBC) $(FBCFLAGS) -x $@ $^

distclean:
	find ./Cpcdos -name "*.asm" -exec rm {} \;
	-rm __fb_ct*.*

clean: distclean 
	-rm $(CPCLIB)

all: $(CPCLIB)

.PHONY: distclean all 
.DEFAULT: all
