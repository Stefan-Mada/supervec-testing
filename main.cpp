#include <iostream>

int func1(int input)
{
	return input;
}
int func2(int input)
{
	return input * 2;
}

int main()
{
	for(int value = -2147483648; value < 2147483647; ++value)
	{
		if(func1(value) != func2(value))
		{
			std::cout << "Src: " << func1(value) << "\n";
			std::cout << "Tgt: " << func2(value) << "\n";
		}
	}
	std::cout << "Reached completion.\n";
}
