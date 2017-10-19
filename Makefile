SOURCES=$(wildcard *.md)
OBJS = $(patsubst %.md, %.html, $(SOURCES))

all: $(OBJS)
	cd css; make

%.html: %.md  Makefile template/html.tmpl
	pandoc $< -o $@ -s -S --css=css/cookbook.css --template=template/html.tmpl --toc

.PHONY:
clean:
	rm -f $(OBJS)
