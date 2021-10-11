#include "function.hpp"

__m256i function(__m256i vec1, __m256i vec2){
	__m256i returnvec = _mm256_add_epi32(vec1, vec2);
	returnvec = _mm256_cmpgt_epi32(vec1, returnvec);
	return returnvec;
}
