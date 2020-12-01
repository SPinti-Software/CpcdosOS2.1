CXX			= gpp
RM			= del

CXXFLAGS	+= -ggdb -O0 -march=i486 -DNDEBUG -m32 -fpermissive -DCpcDos -I include -I .


all: ExeLoader.obj MemoryModule.obj ManagedAlloc.obj

%.obj: src/%.cpp
	$(CXX) $(CXXFLAGS) -c $^ -o $@

clean:
	$(RM) *.obj

re: clean all

.PHONY: all clean re