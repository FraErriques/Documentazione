#include <iostream>
#include <map>
#include <string>
#include "StreamOperation/RWtxtfile.h"


/*   operation:
    - listener  : while( getline()!="Exit") mapShow("key")
    - mapFiller : readFileByLines
    - mapTraverser : reverse_iterator, used to call map::second::Dtor on all nodes.
*/

int main()
{
    std::string phoneBookStreamPath("./interni_IT_.txt");
	std::fstream theStream;
    std::map<std::string, PhoneBookRecord * > * dataAcquisitionResult = readFileByLines( phoneBookStreamPath);
//    mapListener( dataAcquisitionResult, "Erriques");
//    mapListener( dataAcquisitionResult, "fake");
//    mapTraverseForward( dataAcquisitionResult);
//    mapTraverseReverse( dataAcquisitionResult);
    mapListener( dataAcquisitionResult);
    // garbage collect
    mapNodeDestructorCaller( dataAcquisitionResult);
    delete dataAcquisitionResult;
    //
    std::cout << "\n\tStrike Enter to leave\t";
    getchar();
    return 0;
}// main
