#ifndef RWTXTFILE_H_INCLUDED
#define RWTXTFILE_H_INCLUDED


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
       if(nullptr!=this)
       {
            if( nullptr!=this->name
            && nullptr!=this->email
            && nullptr!=this->internal
            && nullptr!=this->cellPhone
            )
            {
                std::cout<<"\n\n\tRecapiti:"
                <<"\n\t"<< *(this->name)
                <<"\n\t"<< *(this->email)
                <<"\n\t"<< *(this->internal)
                <<"\n\t"<< *(this->cellPhone)
                <<"\n\n";
            }
            else
            {
                std::cout<<"\n\t The node fields are empty \n";
            }
       }
       else
       {
           std::cout<<"\n\t The node is empty \n";
       }
    }// internalPrint()
}; // struct PhoneBookRecord


std::map<std::string, PhoneBookRecord * > * readFileByLines(std::string &where);
void mapTraverseForward( std::map<std::string, PhoneBookRecord * > * dictionary);
void mapTraverseReverse( std::map<std::string, PhoneBookRecord * > * dictionary);
void mapNodeDestructorCaller( std::map<std::string, PhoneBookRecord * > * dictionary);
void mapListener( std::map<std::string, PhoneBookRecord * > * dictionary , std::string requiredkey);


#endif // RWTXTFILE_H_INCLUDED

/*   cantina
int RWtxtfile_demo_();
bool writeFileByWords( double *data, int hm);
bool writeVectorFieldR2Affine( double *ApplicationPoint, double *FreeBound, int hm);
bool readFileByWords();
int readFileByChars();
*/

