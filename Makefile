#
# Makefile to compile all the liliypond staff into pdf
#

# Copyright 2013 by Nito Martinez
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

SUBDIRS=src pdf midi

Default: all

all clean distclean install: $(SUBDIRS)
	$(eval TARGET:=$@)
	for i in $(SUBDIRS); do\
	    $(MAKE) -C $$i $(TARGET) || exit 1;\
	done

.PHONY: all clean distclean install
