CFLAGS=-Werror
OBJS=HelloWorld.o

GXX=g++ $(CFLAGS)

.PHONY: all clean

all: C++

%.o: %.cpp
	$(GXX) -c -o $@ $<
C++: $(OBJS)
	$(GXX)  -o $@ $(OBJS)

clean:
	rm -f *.o C++
