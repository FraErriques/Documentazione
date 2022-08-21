#include <iostream>

using namespace std;

class PseudoVector
{
    public:
        int * permanent;
        int capacity;
        int lastUsedIndex;
    //
    PseudoVector()// Ctor
    {
        this->capacity = 3;
        this->lastUsedIndex = -1;// no index used, yet
        this->permanent = new int[capacity];
    }
    ~PseudoVector()// Dtor
    {
        delete[] this->permanent;
        this->permanent = nullptr;
    }// Dtor
    
    bool push_back( int par)
    {
        bool res = false;
        if(this->lastUsedIndex < capacity-1)
        {
            this->permanent[++lastUsedIndex] = par;
            res = true;
            std::cout << "\n\t ordinary push_back \n";
            this->internalPrint();
        }
        else if(this->lastUsedIndex==capacity-1)
        {
            int * temp = new int[capacity+1];// increase
            for( int c=0; c<capacity; c++)
            {
                temp[c] = this->permanent[c];
            }
            temp[capacity] = par;
            capacity++;// register the increase
            this->lastUsedIndex = capacity-1;// in this model, every successive  push_back will cause re-alloc
            // now temp is ready; we can get rid of the pointee of permanent
            delete[] this->permanent;
            this->permanent = temp;// crucial "move" instruction. Temp pointer will be out of scope in a short while.
            res = true;
            std::cout << "\n\t EXTRA-ordinary push_back \n";
            this->internalPrint();
        }
        else if ( this->lastUsedIndex > capacity-1 )
        {
            res = false;
            std::cout << "\n\t DBG : overflow ! \n";
            this->internalPrint();
            throw +1;// overflow
        }
        return res;        
    }// push_back
    
    void internalPrint()
    {
        cout << "\n--------Entering InternalPrint----\n";
        cout << "\t this->capacity == " << this->capacity;
        cout << "\n\t this->lastUsedIndex == " << this->lastUsedIndex;
        cout << "\n\t pointer this->permanent == " << this->permanent;
        if( nullptr != this->permanent)
        {
            for( int c=0; c<this->lastUsedIndex; c++)
                cout << "\t this->permanent["<<c<<"]== " << this->permanent[c];
        }
        else
            {cout << "\t this->permanent pointee not available.";}
        //--ready
        cout << "\n--------Exiting InternalPrint----\n" << endl;
    }// internalPrint    
    
    
};

int main()
{
    PseudoVector * pv = new PseudoVector();
//    pv->push_back(1);
//    pv->push_back(2);
//    pv->push_back(3);
//    pv->push_back(4);
    for( int c=1; c<=100; c++)
    {
        pv->push_back( c);
    }
    delete pv;
    //
    cout << "\n\t Strike ""Enter"" to leave \t" << endl;
    getchar();
    return 0;
}
