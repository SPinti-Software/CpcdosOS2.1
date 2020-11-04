CFLAGS= @_CPINTI.ARGS
LDFLAGS=

SRC_OBJ=$(wildcard obj/*.o)

OBJ=$(SRC_OBJ:.o=.o)


$(EXEC): $(OBJ)
	echo $(OBJ)


all: $(OBJ)
	ar rvs LIBcpnti.a $(EXEC) $(OBJ)



clean:
	del *.o