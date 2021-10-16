#include <immintrin.h>

__m256i function(__m256i vec1)
{	
	const __m256i vec2 = _mm256_setr_epi8(	1, 0, 3, 2, 5, 4, 7, 6, 5, 3, 27, 27, 25, 15, 13, 15,
						16, 17, 18, 14, 13, 12, 31, 25, 16, 27, 1, 11, 12,
					       	14, 15, 16);
	vec1 = _mm256_shuffle_epi8(vec1, vec2);
	vec1 = _mm256_shuffle_epi8(vec1, vec2);
	
	return vec1;
}
