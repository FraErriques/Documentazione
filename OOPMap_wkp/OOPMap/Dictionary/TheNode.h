#ifndef mapNode_H_INCLUDED
#define mapNode_H_INCLUDED

#include <string>
#include <iostream>

namespace Common{
    namespace Dictionary{

class TheNode
{
  private:
    std::string * name;
    std::string * email;
    std::string * internal;
    std::string * cellPhone;
    //
    // methods
  public:
    TheNode(){}
    TheNode(
        std::string &name,
        std::string &email,
        std::string &internal,
        std::string &cellPhone
                    );//---------------------Ctor
    ~TheNode();//-----------Dtor
    void internalPrint();
}; //  TheNode

    }// nmsp
}// nmsp

#endif // mapNode_H_INCLUDED
