PREFIX ?= /usr/local

INSTALL ?= install
SED ?= sed

.PHONY: install all clean

all: built_python

install: all
	python setup.py install

LIBS = $(shell pkg-config units-0 --libs --cflags)


built_python: units0.i
	swig `pkg-config units-0 --cflags` -python -c++ -o units_wrap.cc units0.i
	python setup.py build_ext -lunits-0
	touch built_python

clean:
	rm -f units_wrap.cc units0.py built_python 
	rm -rf build

	
