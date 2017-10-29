SOURCES=$(wildcard *.nim)
OBJS = $(patsubst %.nim, %.exe, $(SOURCES))
OUTPUTS = $(patsubst %.exe, %.output, $(OBJS))

all: $(OBJS) $(OUTPUTS)

%.exe: %.nim  Makefile
	nim c --verbosity:0 --hints:off -o:$@ $<

%.output: %.exe  Makefile
	./$< > $@

.PHONY:
clean:
	rm -f $(OBJS)
	rm -f $(OUTPUTS)
