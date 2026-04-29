CC ?= gcc
CXX ?= g++
AR ?= ar

CXXFLAGS ?= -std=c++11 -O2 -Wall -Wextra
CFLAGS ?= -O2 -Wall -Wextra
CPPFLAGS ?= -DLOGGING_LEVEL=LL_WARNING -I./deps/
LDFLAGS ?=
LDLIBS ?= -lstdc++ -lm

.PHONY: all clean

all: demo

demo: demo.o libjieba.a
	$(CC) $(LDFLAGS) -o $@ demo.o -L./ -ljieba $(LDLIBS)

demo.o: demo.c lib/jieba.h
	$(CC) $(CFLAGS) -o $@ -c demo.c

libjieba.a: jieba.o
	$(AR) rcs $@ jieba.o

jieba.o: lib/jieba.cpp lib/jieba.h
	$(CXX) $(CXXFLAGS) $(CPPFLAGS) -o $@ -c lib/jieba.cpp

clean:
	rm -f *.a *.o demo
