#include <iostream>

using namespace std;

class Bulk_Entity
{

public:
    class myIterator
    {
    public:
        int *currentNode;
        int *first;
        int *after_last;


        int *operator++()
        {
            int stepSize = sizeof(int);
            // TODO manage the case of incorrectness of current position.
            this->currentNode += 1;// which means 1*stepSize;
            return this->currentNode;
        }// operator++

        int *operator++( int par)
        {
            int stepSize = sizeof(int);
            // TODO manage the case of incorrectness of current position.
            this->currentNode += 1;// which means 1*stepSize;
            return this->currentNode;
        }// operator++

        int operator*()
        {
            return *(this->currentNode);
        }// operator deference (*)

    };// class Iterator


    Bulk_Entity()
    {
        this->vec = new int[5];
        for(int c=0; c<5; c++)
        {
            this->vec[c] = c;
        }
    }// Ctor


    Bulk_Entity::myIterator myBegin()
    {
        Bulk_Entity::myIterator theIterator;
        theIterator.first = (&vec[0])+0;
        theIterator.after_last = (&(vec[5]))+1;// one after last
        theIterator.currentNode = theIterator.first;// init to first
        return theIterator;
    }

    Bulk_Entity::myIterator myEnd()
    {
        Bulk_Entity::myIterator theIterator;
        theIterator.first = (&vec[0])+0;
        theIterator.after_last = (&(vec[5]))+1;// one after last
        theIterator.currentNode = theIterator.after_last;// init to one_after_last
        return theIterator;
    }// end

private:
    int *vec;
};// class Bulk_Entity



int main()
{
    Bulk_Entity be;// automatic instance
    Bulk_Entity::myIterator it = be.myBegin();
    int * addr_0 = it.first;
    int val_0 = *it;
    int * addr_1 = ++it;
    int val_1 = *it;
    int * addr_2 = it++;// prefix or postfix operator++ have different signatures
    int val_2 = *it;
    int * addr_3 = ++it;
    int val_3 = *it;
    int * addr_4 = ++it;
    int val_4 = *it;
    //
    int res = *it;
    std::cout<<"\n\t the pointed integer has value: "<< res <<"\n\n";

    //
    cout << "Strike \"Enter\" to leave " << endl;
    getchar();
    return 0;
}
