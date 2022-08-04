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
//    class MyTypedef NB a class as local typedef: se po' fa!
//    {
//        int field;
//    };
    std::string phoneBookStreamPath("./telExport_Excel_TAB_.txt");// was  interni_IT_.txt TODO adjust RecordLayout
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
