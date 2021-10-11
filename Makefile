CC=clang++
WARN=-Werror
CFLAGS=-I -march=native -mavx2 -O3
ISPCFLAGS=--target avx2-i32x8
DEPS = function.hpp

all: main IR BC

%.o: %.cpp $(DEPS)
	$(CC) $(CFLAGS) $(WARN) -c -o $@ $< 
%.o: %.ispc
	ispc $(ISPCFLAGS) $< -o $@

main: main.o function.o
	$(CC) $(CFLAGS) $(WARN) main.o function.o -o main.out

%.out: %.cpp
	$(CC) $(CLAFGS) $(WARN) $< -o $@

.PHONY: IR %.ll BC %.bc

%.ll: %.ispc
	ispc $(ISPCFLAGS) --emit-llvm-text $< -o $@

%.ll: %.cpp
	$(CC) $(CFLAGS) $(WARN) -S -emit-llvm $< -o $@

IR: function.ll
