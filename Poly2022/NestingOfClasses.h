#ifndef NestingOfClasses_Include__
#define NestingOfClasses_Include__

#include "One.h"
#include "Two.h"

class NestingOfClasses
{
public:

    class OneSon : public One 
    {
    public:
        OneSon(){}
        virtual void internalPrint()
        {
            std::cout << "\n\t OneSon::internalPrint \n";
        }
    }; // this way it's correct.
    
    class TwoSon : public Two 
    {
    public:
        TwoSon(){}
        virtual void internalPrint()
        {
            std::cout << "\n\t TwoSon::internalPrint \n";
        }        
    };
    //
    NestingOfClasses(){}
    void manage()
    {
        OneSon one;
        one.internalPrint();
        TwoSon two;
        two.internalPrint();
        //
        One father;
        father.internalPrint();
    }// manage
};

#endif // NestingOfClasses_Include__
