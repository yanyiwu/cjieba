all: cjieba_demo
cjieba_demo: libcjieba.a
	gcc -o cjieba_demo cjieba_demo.c -L./ -lcjieba -lstdc++ -lm
libcjieba.a:
	g++ -DLOGGER_LEVEL=LL_WARN -o jieba.o -c src/jieba.cpp
	ar rs libcjieba.a jieba.o 
clean:
	rm -f *.a *.o cjieba_demo
