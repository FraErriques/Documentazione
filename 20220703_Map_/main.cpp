#include <iostream>
#include <map>

using namespace std;


void mapShow( std::map<std::string, std::string> * dictionary)
{
    for( std::map<std::string, std::string>::reverse_iterator bkwd=dictionary->rbegin();
         bkwd != dictionary->rend();
         bkwd++
    )
    {
        std::cout<<"\t"<< bkwd->first << "\t" << bkwd->second << "\n";
    }
}// 

int mapFillUp( std::map<std::string, std::string> * dictionary)
{
    (*dictionary)["uno"] = "il numero uno";
    (*dictionary)["due"] = "la seconda posizione";
    return dictionary->size();// cardinality
}// mapFillUp

int main()
{
    //....do something
    std::map<std::string, std::string> * dictionary = new std::map<std::string, std::string>();
    int dictionary_cardinality = mapFillUp( dictionary);
    mapShow( dictionary);
    delete dictionary;

    cout << "\n\tStrike Enter to leave\t";
    getchar();
    return 0;
}// main