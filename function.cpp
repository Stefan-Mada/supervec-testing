#include <immintrin.h>

__m256i function(__m256i vec1, __m256i vec2)
{	
	int32_t* vals = (int32_t*)&vec1;
	int32_t* vals2 = (int32_t*)&vec2;
	for(int i = 0; i < 8; ++i)
		if(!i%2)
			vals[i] -= vals2[i];
		else
			vals[i] += vals2[i];
	return vec1;

}
