CC=gpp
CFLAGS= @..\_CPINTI.ARGS
LDFLAGS=
EXEC=LIBcpCOR.a
SRC_CPP=$(wildcard *.cpp)
SRC_C=$(wildcard *.c)

SRC_CPP2=$(wildcard memoire/*.cpp)
SRC_C2=$(wildcard memoire/*.c)

OBJ=$(SRC_CPP:.cpp=.o) $(SRC_C:.c=.o) $(SRC_CPP2:.cpp=.o) $(SRC_C2:.c=.o)

$(EXEC): $(OBJ)
	xcopy /Y *.o ..\obj

%.o: %.c
	$(CC) -o $@ -c $< $(CFLAGS)

%.o: %.cpp
	$(CC) -o $@ -c $< $(CFLAGS)



clean:
	del *.o
	cd memoire
	del *.o
	cd ..