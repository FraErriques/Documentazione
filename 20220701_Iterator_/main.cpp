#include <iostream>
#include <vector>

using namespace std;

void vector_readBackward( std::vector<int> * store)
{
    std::cout<< "\n\tBackward read" << std::endl;
    for( std::vector<int>::reverse_iterator bkwd=store->rbegin();
            bkwd!=store->rend();
            bkwd++
    )
    {
        std::cout<< "\t" << *bkwd ;
    }// prn
    std::cout<< std::endl;
}//vector_readBackward(

void vector_readForward( std::vector<int> * store)
{
    std::cout<< "\n\tForward read" << std::endl;
    for( std::vector<int>::iterator fwd=store->begin();
            fwd!=store->end();
            fwd++
    )
    {
        std::cout<< "\t" << *fwd ;
    }// prn
    std::cout<< std::endl;
}// vector_readForward(


int populate_vector( std::vector<int> * store)
{
    for( int c=0; c<5; c++)
    {
        store->push_back(c);
    }
    return store->size();
}// populate_vector(

int main()
{
    std::vector<int> * store = new std::vector<int>();
    int storeCardinality = populate_vector( store);
    vector_readForward( store);
    vector_readBackward( store);
    delete store;


    //
    cout << "\n\n\tStrike Enter to leave\t";
    getchar();
    return 0;
}// main(
