#include <iostream>
#include <map>
#include "StreamOperation/RWtxtfile.h"
#include "StreamOperation/stream_io_.h"

using namespace std;







/*   TODO
    - listener  : while( getline()!="Exit") mapShow("key")
    - mapFiller : signature( std::map<std::string, structRecordLayout> * dictionary, string key, structRecordLayout &second)
    - mapTraverser : reverse_iterator show all {first,second}
*/

int main()
{
    std::string phoneBookStreamPath("./interni_IT_.txt");
	std::fstream theStream;
    std::map<std::string, PhoneBookRecord * > * dataAcquisitionResult = readFileByLines( phoneBookStreamPath);
    mapListener( dataAcquisitionResult, "Erriques");
    mapListener( dataAcquisitionResult, "fake");
    mapTraverse( dataAcquisitionResult);
    delete dataAcquisitionResult;
    //
    cout << "\n\tStrike Enter to leave\t";
    getchar();
    return 0;
}// main
