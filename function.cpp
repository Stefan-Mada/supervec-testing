#include <immintrin.h>

__m256i function(__m256i a, __m256i b)
{	
	return _mm256_avg_epu16(a, b);
}
