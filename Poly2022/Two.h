#ifndef TWO_H_INCLUDED
#define TWO_H_INCLUDED

#include <iostream>

class Two
{
public:
    int field = 2;
    //
public:    
    Two(){}
public:    
    virtual void internalPrint()
    {
        std::cout << "\n\t the field has value: " <<   this->field;
    }    
};


#endif // TWO_H_INCLUDED
