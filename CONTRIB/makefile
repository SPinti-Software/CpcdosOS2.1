CC=gpp
CFLAGS=  @_CONTRIB.args
LDFLAGS=
EXEC=LIBwrp.a
SCR_CPP=$(wildcard *.cpp)
SRC_OBJ=$(wildcard obj/*.obj)


OBJ=$(SCR_CPP:.cpp=.obj) $(SRC_OBJ:.obj=.obj) 

$(EXEC): $(OBJ)
	ar rvs $(EXEC) $(OBJ)

%.obj: %.cpp
	$(CC) -o $@ -c $< $(CFLAGS)

clean:
	del *.o
	del *.a
	del obj\*.obj