#include <iostream>
#include <vector>

using namespace std;

template<typename T>
T am(std::vector<T> &v)
{
    T ArithmeticMean = 0;
    T cardinality = 0;

    for( typename std::vector<T>::iterator vi = v.begin(); vi!=v.end(); vi++)
    {
        ArithmeticMean += *vi;
        ++cardinality;
    }
    if( 0<cardinality)
    {
        ArithmeticMean /= cardinality;
    }// else: nothing to do.
    // done
    return ArithmeticMean;
}


int main()
{
    std::vector<int> v;
    v.push_back( 1);
    v.push_back( 2);
    v.push_back( 3);
    //
    for( std::vector<int>::iterator vi = v.begin(); vi!=v.end(); vi++)
    {
        cout << *vi << endl;
    }
    // call ArithmeticMean
    double res_am_i = am(v);
    //
    // --with double now:
    std::vector<double> w;
    w.push_back( 1);
    w.push_back( 2);
    w.push_back( 3);
    //
    for( std::vector<double>::iterator wi = w.begin(); wi!=w.end(); wi++)
    {
        cout << *wi << endl;
    }
    // call ArithmeticMean
    double res_am_d = am(w);
    //
    /*
    // --problematic call with non-numeric type: gets blocked at compile time.
    std::vector<std::string> vs;
    vs.push_back( "uno");
    vs.push_back( "due");
    vs.push_back( "tre");
    //
    for( std::vector<std::string>::iterator vs_it = vs.begin(); vs_it!=vs.end(); vs_it++)
    {
        cout << *vs_it << endl;
    }
    // call ArithmeticMean
    std::string res_am_str = am(vs);
    */




    cout << "Hello world!" << endl;
    return 0;
}
