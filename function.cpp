#include "function.hpp"

__m256i function(__m256i vec1, int val, int val2){
	int val3 = val + val2;
	val3 *= val2;
	__m256i valVec = _mm256_set1_epi64x(val3);
	__m256i returnvec = _mm256_cmpgt_epi64(valVec, vec1);
	return returnvec;
}
