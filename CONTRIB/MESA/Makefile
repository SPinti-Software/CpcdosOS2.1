CPPFLAGS = -Imesa
LDFLAGS  = -Lmesa -lOSMesa -lGLU
CXX=i586-pc-msdosdjgpp-g++
CXXFLAGS = -O3 -fomit-frame-pointer -ffast-math
CPPFLAGS = $(OPT)
OPT = -Wall -W -pedantic -std=gnu++0x

all: a.out a.exe

#a.exe: main.o mesa/osmesa.h
#	$(CXX) $< -s -o $@ $(CXXFLAGS) $(LDFLAGS) $(LDLIBS) 

L=-lOSMesa -I/usr/local/include/GL -L/usr/local/lib -I/usr/include/GL
#L=-L/usr/lib -lGL

a.out: dos_goal.cc djgpp/go32.h  map.tcc math.tcc
	g++ $< -g -o $@ $(CXXFLAGS) -fopenmp \
		$(OPT) -Ofast -ftree-vectorize -march=native \
		$(L) -lGLU \
		-Ifattal02 \
		`pkg-config sdl    --libs --cflags` \
		-Idjgpp \
		-ldl
		
a.exe: dos_goal.cc mesa/osmesa.h  map.tcc math.tcc
	$(CXX) $< -g -o $@ $(CXXFLAGS) $(LDFLAGS) $(LDLIBS)  $(CPPFLAGS)

makemaps: makemaps.cc  map.tcc math.tcc
	g++-4.6 $< -g -o $@ $(CXXFLAGS) -fopenmp \
		$(OPT) -Ofast -ftree-vectorize -march=native
