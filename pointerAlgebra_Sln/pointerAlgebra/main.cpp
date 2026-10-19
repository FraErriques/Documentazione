#include <cstdio>
#include <iostream>

int main()
{
	struct Pippo{
		int i;
		char c;
	};
	Pippo * pippo = new Pippo[3];
	//----
	(pippo+0)->i = 0;
	(*(pippo+0)).i = 0;// this notation is equivalent
	(pippo+0)->c = (char)(70+0);
	//----
	(pippo+1)->i = 1;
	(pippo+1)->c = (char)(70+1);
	//----
	(pippo+2)->i = 2;
	(pippo+2)->c = (char)(70+2);
	//----
	for(int c=0; c<3; c++)
	{
		std::cout<< "vector["<<c<<"]== " << (pippo + c)->i << std::endl;
		std::cout<< "vector["<<c<<"]== " << (pippo + c)->c;
		std::cout<< "\n-----------\n";
	}
	delete[] pippo;

	std::cout<< "Hallo : strike Enter to leave. " <<std::endl;
	getchar();
}//
