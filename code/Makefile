SOURCES=$(wildcard *.nim)
OBJS = $(patsubst %.nim, %.exe, $(SOURCES))

all: $(OBJS)

%.exe: %.nim  Makefile
	nim c --verbosity:0 --hints:off -o:$@ $<

.PHONY:
clean:
	rm -f $(OBJS)
