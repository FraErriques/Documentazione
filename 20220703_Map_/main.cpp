#include <iostream>
#include <map>
#include "StreamOperation/RWtxtfile.h"
#include "StreamOperation/stream_io_.h"

#include <sstream>
#include <string>

using namespace std;


void pippoListener()
{
    std::string str;
    for(;;)
    {
        std::getline(std::cin, str);
        if(str=="Exit loop"){break;}
        std::cout<<" received line "<< str;
    }
}





/*   TODO
    - listener  : while( getline()!="Exit") mapShow("key")
    - mapFiller : signature( std::map<std::string, structRecordLayout> * dictionary, string key, structRecordLayout &second)
    - mapTraverser : reverse_iterator show all {first,second}
*/

int main()
{
    pippoListener();
    //
    std::string phoneBookStreamPath("./interni_IT_.txt");
	std::fstream theStream;
    std::map<std::string, PhoneBookRecord * > * dataAcquisitionResult = readFileByLines( phoneBookStreamPath);
    mapListener( dataAcquisitionResult, "Erriques");
    mapListener( dataAcquisitionResult, "fake");
    mapTraverseForward( dataAcquisitionResult);
    mapTraverseReverse( dataAcquisitionResult);
    mapNodeDestructorCaller( dataAcquisitionResult);
    delete dataAcquisitionResult;
    //
    cout << "\n\tStrike Enter to leave\t";
    getchar();
    return 0;
}// main
