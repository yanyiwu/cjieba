all: demo
demo: libjieba.a
	gcc -o demo demo.c -L./ -ljieba -lstdc++ -lm
libjieba.a:
	g++ -o jieba.o -c -DLOGGER_LEVEL=LL_WARN -I./deps/ src/jieba.cpp
	ar rs libjieba.a jieba.o 
clean:
	rm -f *.a *.o demo
