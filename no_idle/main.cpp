#include <iostream>
#include <cmath>

using namespace std;

template<typename T>
void f(T s)
{
    size_t type_size = sizeof( T);// in byte.
    // the factor 8 stands for 8 bit per byte.
    // the denominator +2.0 is for digned types, which share their size between negatives and positives.
    // the minus one is due to the representation of the zero.
    double max_representableInteger = pow(+2.0, (double)type_size*8.0)/2.0-1;//valid only on integral types.
    std::cout << "max_representableInteger in typename==\"" << typeid(s).name() <<"\" is: "<<max_representableInteger<< endl;
}


int main()
{
    f( 13);// should default to int32.
    f( 'a');// should default to an 8 bit signed type, i.e. byte==signed char.
    f( 13u);// meant to be unsigned. TODO: not working.
    f( 13L);// meant to be long. TODO: not working.
    long unsigned int ul = 13;
    f( ul );
    //
    cout << "\n\n\t Strike Enter to leave \t";
    getchar();
    return 0;
}
