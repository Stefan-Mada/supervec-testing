#include <immintrin.h>

int function(__m256i vec)
{	
	int64_t* arr = (int64_t*)&vec;
	int sum = 0;
	for(int i = 0; i < 4; ++i)
		sum += arr[i];
	return sum;
}
