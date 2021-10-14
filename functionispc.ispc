
export void greyScaleISPC(uniform unsigned int8 vin[], uniform unsigned int8 vout[],
                   uniform int length) {
    
	foreach(index = 0 ... length)
		vout[index] = vin[index];
}
