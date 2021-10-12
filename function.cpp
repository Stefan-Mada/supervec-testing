#include "function.hpp"

int function(int val1, int val2){
	if(val2 == 1)
		return val1;
//	else if (val2 < 1)
//		return 0;

	return val1 * function(val1, val2 - 1);
}
