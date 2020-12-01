CXX			= gpp
RM			= del

CXXFLAGS	+= -g -O0 -march=i686 -DNDEBUG -m32 -fpermissive -DCpcDos -I include -I .


all: ExeLoader.obj MemoryModule.obj ManagedAlloc.obj

%.obj: src/%.cpp
	$(CXX) $(CXXFLAGS) -c $^ -o $@

clean:
	$(RM) *.obj

re: clean all

.PHONY: all clean re