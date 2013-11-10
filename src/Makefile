#
# Makefile to compile all the liliypond staff into pdf
#

# Copyright 2013 by Nito Martinez
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

MASTERFILES=gaita.ly

PDFFILES=$(patsubst %.ly,%.pdf,$(wildcard *.ly))

all: $(PDFFILES)

%.pdf: %.ly $(MASTERFILES)
	lilypond $<

install: all
	cp *.pdf ../pdf
	cp *.midi ../midi

clean:
	rm -f *~ *.ps *.pdf *.midi

distclean: clean
	rm -f *.midi *.pdf

.PHONY: all clean distclean install
