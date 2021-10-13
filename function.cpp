#include "function.hpp"

int function(int val1, int depth = 1){
	if (val1 <= 4)
		return depth;
	else if(val1 % 2)
		return function(val1 / 2, depth + 1);
	else
		return function(val1 * 3 + 1, depth + 1);
}
