all: help

help:
	echo "make clean"
	echo "make init"

init:
	mkdir build;cd build; cmake ..

build/sh1106-demo.uf2: sh1106-demo.cpp
	cd build; make

build: build/sh1106-demo.uf2

install: build/sh1106-demo.uf2
	picotool load build/sh1106-demo.uf2

info:
	picotool info -a

clean:
	rm -Rvf build

