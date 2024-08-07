#ifndef RWTXTFILE_H_INCLUDED
#define RWTXTFILE_H_INCLUDED

#include <vector>
#include <map>
#include <string>
#include <fstream>
#include <iostream>


class PhoneBookRecord
{
  private:
    std::string * name;
    std::string * email;
    std::string * internal;
    std::string * cellPhone;
    //
    // methods
    public:
    PhoneBookRecord(){}
    PhoneBookRecord(
        std::string &name,
        std::string &email,
        std::string &internal,
        std::string &cellPhone
                    )
                    {
                        this->name = new std::string( name);
                        this->email = new std::string( email);
                        this->internal = new std::string( internal);
                        this->cellPhone = new std::string( cellPhone);
                    }// Ctor
    ~PhoneBookRecord()// Dtor
    {
        std::cout<<"\n\t Entering the Destructor \n";
        delete this->name;
        delete this->email;
        delete this->internal;
        delete this->cellPhone;
        this->name = nullptr;
        this->email = nullptr;
        this->internal = nullptr;
        this->cellPhone = nullptr;
    }// Dtor
    
    void internalPrint()
    {
        std::cout<<"\n\n\tRecapiti:";
        if( nullptr!=this->name
            && ""!= *(this->name)  )
        {
            std::cout<<"\n\t"<< *(this->name);
        }
        else
        {
            std::cout<<"\n\t missing field this->name";
        }
        //
        if( nullptr!=this->email
            && ""!= *(this->email)  )
        {
            std::cout<<"\n\t"<< *(this->email);
        }
        else
        {
            std::cout<<"\n\t missing field this->email";
        }
        //
        if( nullptr!=this->internal
            && ""!= *(this->internal)  )
        {
            std::cout<<"\n\t"<< *(this->internal);
        }
        else
        {
            std::cout<<"\n\t missing field this->internal";
        }
        //
        if( nullptr!=this->cellPhone
            && ""!= *(this->cellPhone)  )
        {
            std::cout<<"\n\t"<< *(this->cellPhone);
        }
        else
        {
            std::cout<<"\n\t missing field this->cellPhone";
        }
        // ready
        std::cout<<"\n\n";
    }// internalPrint()
}; // class PhoneBookRecord


std::map<std::string, PhoneBookRecord * > * readFileByLines(std::string &where);
bool prune_RecordLayout( std::map<std::string, PhoneBookRecord * > * dictionary , std::vector<std::string> * tokenizedLine);
void mapTraverseForward( std::map<std::string, PhoneBookRecord * > * dictionary);
void mapTraverseReverse( std::map<std::string, PhoneBookRecord * > * dictionary);
void mapNodeDestructorCaller( std::map<std::string, PhoneBookRecord * > * dictionary);
void nodeFinder( std::map<std::string, PhoneBookRecord * > * dictionary , std::string requiredkey);
void mapListener(  std::map<std::string, PhoneBookRecord * > * dictionary );

#endif // RWTXTFILE_H_INCLUDED

/*   cantina
int RWtxtfile_demo_();
bool writeFileByWords( double *data, int hm);
bool writeVectorFieldR2Affine( double *ApplicationPoint, double *FreeBound, int hm);
bool readFileByWords();
int readFileByChars();
*/

