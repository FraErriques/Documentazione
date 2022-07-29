#include <iostream>

using namespace std;

class Bulk_Entity
{
private:
    int *vec;

public:
    class myIterator
    {
    public:
        int* thePointer;
        int *operator++(){return (this->thePointer)+1;}
        int operator*(){return *(this->thePointer);}
    };


    Bulk_Entity()
    {
        this->vec = new int[5];
        for(int c=0; c<5; c++)
        {
            this->vec[c] = c;
        }
    }

    Bulk_Entity::myIterator * myBegin()
    {
        Bulk_Entity::myIterator * theIterator = new Bulk_Entity::myIterator();
        theIterator->thePointer = &(this->vec[0])+0;
        return theIterator;
    }

    Bulk_Entity::myIterator * myEnd()
    {
        Bulk_Entity::myIterator * theIterator = new Bulk_Entity::myIterator();
        theIterator->thePointer = &(this->vec[5])+1;
        return theIterator;
    }
};



int main()
{
    Bulk_Entity be;// automatic instance
    Bulk_Entity::myIterator * it = be.myBegin();
    (*it).operator++();
    int res = (*it).operator*();
    std::cout<<"\n\t the pointed integer has value: "<< res <<"\n\n";

    //
    cout << "Strike \"Enter\" to leave " << endl;
    getchar();
    return 0;
}
