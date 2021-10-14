#include "function.hpp"

int* function(int val){
	constexpr int size = 10;
	int* arr = new int[size];
	for(int i = 0; i < size; ++i)
		arr[i] = val;
	return arr;
}
