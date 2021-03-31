# Makefile for this Docker Test Project

all : whatTime.cpp
	g++ -o PrintTime $^

clean :
	rm PrintTime