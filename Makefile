CC=clang++
WARN=-Werror
CFLAGS=-I -march=native -mavx2 -O0 -fno-strict-aliasing
ISPCFLAGS=--target avx2-i32x8 -O3
DEPS = function.hpp

all: main IR BC

%.o: %.cpp $(DEPS)
	$(CC) $(CFLAGS) $(WARN) -c -o $@ $< 
%.o: %.ispc
	ispc $(ISPCFLAGS) $< -o $@

main: main.o function.o functionispc.o
	$(CC) $(CFLAGS) $(WARN) main.o function.o -o main.out

%.out: %.cpp
	$(CC) $(CLAFGS) $(WARN) $< -o $@

.PHONY: IR %.ll BC %.bc supervec supervecispc alive-tv

%.ll: %.ispc
	ispc $(ISPCFLAGS) --emit-llvm-text $< -o $@

%.ll: %.cpp
	$(CC) $(CFLAGS) $(WARN) -S -emit-llvm $< -o $@

IR: function.ll functionispc.ll main.ll

supervec: function.ll
	$$HOME/llvm/build/bin/opt  -enable-new-pm=0 -load $$HOME/minotaur/build/minotaur.so -so -S function.ll
	
supervecispc: functionispc.ll
	$$HOME/llvm/build/bin/opt  -enable-new-pm=0 -load $$HOME/minotaur/build/minotaur.so -so -S functionispc.ll

alive-tv: %.ll
	$$HOME/alive2-x86/build/alive-tv $<
