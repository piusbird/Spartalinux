CC=gcc
CFLAGS=-c -Wall -g -DDEBUG
LDFLAGS= -lbsd
SOURCES= ealloc.c hash.c rcorder.c
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE=rcorder

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.c.o:
	$(CC) $(CFLAGS) $< -o $@
clean:
	rm -f *.o



