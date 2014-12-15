all: cjieba_demo
cjieba_demo: libcjieba.a
	gcc -o cjieba_demo cjieba_demo.c -L./ -lcjieba -lstdc++
libcjieba.a:
	g++ -DLOGGER_LEVEL=LL_WARN -o c_api.o -c src/c_api.cpp
	ar rs libcjieba.a c_api.o 
clean:
	rm *.a *.o cjieba_demo
