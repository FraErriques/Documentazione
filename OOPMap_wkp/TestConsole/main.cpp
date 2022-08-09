#include "../OOPMap/Dictionary/MapOperation.h"

int main()
{
    std::string phoneBookStreamPath("./interi_TAB_.txt");// actual is telExport_Excel_TAB_.txt
    Common::Dictionary::MapOperation * phoneMap = new Common::Dictionary::MapOperation();
    phoneMap->readFileByLines( phoneBookStreamPath);
    phoneMap->mapListener( );
    // garbage collect
    delete phoneMap;

    //
    std::cout<<"\n\n\n\t Strike Enter to leave\t";
    getchar();
    return 0;
}// main
