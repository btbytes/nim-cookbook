SOURCES=$(wildcard *.md)
OBJS = $(patsubst %.md, %.html, $(SOURCES))
CODE = $(wildcard code/*.nim)
EXE = $(patsubst %.nim, %.exe, $(CODE))
OUTPUT = $(patsubst %.exe, %.output, $(EXE))

all: README.adoc $(OUTPUT) $(OBJS)
	cd css; make

code/%.output: code/%.exe
	$< > $@

code/%.exe: code/%.nim
	nim c --verbosity:0 --hints:off -o:$@ $<

%.html: %.md  Makefile template/html.tmpl
	pandoc $< -o $@ -s -S --css=css/cookbook.css \
		--template=template/html.tmpl \
		--filter pandoc-include-code

sync: $(OBJS)
	netlify deploy -s 6ccb057b-1341-4c92-b173-9b6a6ae6c5a0

.PHONY:
clean:
	rm -f $(OBJS)
