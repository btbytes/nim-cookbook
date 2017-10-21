SOURCES=$(wildcard *.md)
OBJS = $(patsubst %.md, %.html, $(SOURCES))

all: $(OBJS) README.adoc
	cd css; make

%.html: %.md  Makefile template/html.tmpl
	pandoc $< -o $@ -s -S --css=css/cookbook.css \
		--template=template/html.tmpl \
		--filter pandoc-include-code

sync: $(OBJS)
	netlify deploy -s 6ccb057b-1341-4c92-b173-9b6a6ae6c5a0

.PHONY:
clean:
	rm -f $(OBJS)
