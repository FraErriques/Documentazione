#include <iostream>
#include "One.h"
#include "NestingOfClasses.h"


   class OneSon : public One 
    {
    public:
        OneSon(){} // Ctor
        virtual ~OneSon()// Dtor
        {
            std::cout << "\n\t passing by Son's OneSon::Dtor \n";
        }// Dtor        
        virtual void internalPrint()
        {
            std::cout << "\n\t OneSon::internalPrint \n";
        }
    }; // this way it's correct.


int main()
{
    NestingOfClasses inm;
    inm.manage();

    One *p , one_inst;
    OneSon oneSon_inst;
    
    // NO without malloc it's an illegal address *p = one_inst;
    p = &one_inst;
    p->internalPrint();
    //
    // NO without malloc it's an illegal address *p = oneSon_inst;
    p = &oneSon_inst;
    p->internalPrint();
    
    
    
    std::cout << "\n\n\t Strike ""Enter"" to leave \t";
    getchar();
    return 0;
}
