#include <iostream>
#include "../libraryMap/MapOperation.h"

int main()
{
    std::string phoneBookStreamPath("./telExport_Excel_TAB_.txt");// was  interni_IT_.txt TODO adjust RecordLayout
    std::map<std::string, PhoneBookRecord * > * dataAcquisitionResult = readFileByLines( phoneBookStreamPath);
    mapListener( dataAcquisitionResult);
    // garbage collect
    mapNodeDestructorCaller( dataAcquisitionResult);
    delete dataAcquisitionResult;
    //
    std::cout << "\n\tStrike Enter to leave\t";
    getchar();
    return 0;
}// main
