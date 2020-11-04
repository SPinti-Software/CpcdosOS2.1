CC=gpp
CFLAGS= @..\_CPINTI.ARGS
LDFLAGS=
EXEC=LIBcpCOR.a
SRC_CPP=$(wildcard *.cpp)
SRC_C=$(wildcard *.c)
OBJ=$(SRC_CPP:.cpp=.o) $(SRC_C:.c=.o)

$(EXEC): $(OBJ)
	xcopy /Y *.o ..\obj

%.o: %.c
	$(CC) -o $@ -c $< $(CFLAGS)

%.o: %.cpp
	$(CC) -o $@ -c $< $(CFLAGS)



clean:
	del *.o