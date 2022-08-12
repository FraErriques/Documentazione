#include <fstream>
#include "MapOperation.h"

Common::Dictionary::MapOperation::MapOperation()// Ctor
{
    this->dictionary =  nullptr;// init to invalid.
}

Common::Dictionary::MapOperation::~MapOperation()// Dtor
{
    this->mapNodeDestructorCaller();
    delete this->dictionary;
}// Dtor


// the input parameter "where" is the path of the data file.
// the return value is a pointer to the filled map; the caller has to delete it.
void Common::Dictionary::MapOperation::readFileByLines( std::string &where)
{
    std::fstream testFile;
    std::string curr_data;
    // DBG std::cout<<"\n\t Stream to be opened: "<<where.c_str()<<std::endl;
    // Open for read : Input
	testFile.open( where.c_str(), std::ios::in );
    if (testFile.is_open())
    {
        // DBG std::cout<<"\n\t the Stream is open: "<<where.c_str()<<std::endl;
        this->dictionary = new std::map<std::string, TheNode * >();// init,since file is open.
        while (!testFile.eof())
        {
            std::getline ( testFile, curr_data);// legge con separatore EOL
            if(testFile.eof()){break;}
            const std::string tokenToSplitOn("\t");
            std::vector<std::string> * tokenizedLine = Common::StrManipul::stringSplit( tokenToSplitOn, curr_data, false );
            // call insertion prune-filter
            bool hasBeenAcceptedForInsertion = prune_RecordLayout( tokenizedLine);
            if( ! hasBeenAcceptedForInsertion)
            {
                std::cout<<"\n\t Record pruned due to inadequacy : "<<curr_data<<"\n\n";
            }// else was correctly inserted.
            // cleanup
            delete tokenizedLine;
        }
        testFile.close();
    }// else result remains false; end File-read loop.
    else
    {
        std::cout<<"\n\t the Stream is NOT open: "<<where.c_str()<<std::endl;
    }
    //ready
}// readFileByLines


bool Common::Dictionary::MapOperation::isFieldNonEmpty( std::string &theField)
{
    std::string emptyField("");
    bool res = false;// init
    if( emptyField.compare( Common::StrManipul::trimBoth( theField)) )
        {res=true;}// else stay false.
    return res;
}//isFieldNonEmpty(

bool Common::Dictionary::MapOperation::prune_RecordLayout( std::vector<std::string> * tokenizedLine)
{// NB. put here REcordLayout knowledge about field position and content;
    bool res = false;// init to invalid
    int currentLineTokenCardinality = tokenizedLine->size();
    if( 7<= currentLineTokenCardinality)// NB. put here RecordLayout knowledge about field position and content; cout non interesting fields too.
    {
        // NB. add here pruning concept, like notNULLABLE fields check.
        if( ! this->isFieldNonEmpty((*tokenizedLine)[2]))// if the Key(i.e. first) is empty-> exit.
        {return res;}// else continue.
        //
        std::string fieldThree;
        if( ! this->isFieldNonEmpty((*tokenizedLine)[3]))
        {
            fieldThree.assign( "inadequate_field_three");
            //fieldThree = "inadequate_field_three";
        }
        else
        {
            fieldThree.assign( (*tokenizedLine)[3] );
            //fieldThree = (*tokenizedLine)[3];
        }
        //
        std::string fieldFive;
        if( ! this->isFieldNonEmpty((*tokenizedLine)[5]))
        {
            fieldFive.assign( "inadequate_field_five");
        }
        else
        {
            fieldFive.assign( (*tokenizedLine)[5] );
        }
        //
        std::string fieldSix;
        if( ! this->isFieldNonEmpty((*tokenizedLine)[6]))
        {
            fieldSix.assign( "inadequate_field_six" );
        }
        else
        {
            fieldSix.assign( (*tokenizedLine)[6] );
        }
        // push the read line in a node-class and then in the map
        TheNode * curRecord = new TheNode(
                (*tokenizedLine)[2],//----------joined fields-----------------#####
                fieldThree,
                fieldFive,
                fieldSix    );
        // map insertion
        (*dictionary).operator[]((*tokenizedLine)[2]) = curRecord;//----joined fields----#####
        // DBG  (*dictionary).operator[]((*tokenizedLine)[1])->internalPrint();
        res = true;
    }// if pruning evaluation passed; else prune record and return false.
    // ready
    return res;
}// prune_RecordLayout

/* cantina for RecordLayout change
    if(+1)// NB. put here RecordLayout knowledge about field position and content;
    {
        TheNode * curRecord = new TheNode(
                (*tokenizedLine)[2],//----------joined fields-----------------#####
                (*tokenizedLine)[3],
                (*tokenizedLine)[5],
                (*tokenizedLine)[6]
                              );
        // NB. add here pruning concept, like notNULLABLE fields check.
        // push the read line in a node-class and then in the map
        (*dictionary).operator[]((*tokenizedLine)[2])=curRecord;//----------joined fields------------######
        // DBG  (*dictionary).operator[]((*tokenizedLine)[1])->internalPrint();
        res = true;
    }// if pruning evaluation passed; else prune record and return false.

    ---------------------------################################

    if(+1)// NB. put here RecordLayout knowledge about field position and content;
    {
        TheNode * curRecord = new TheNode(
                (*tokenizedLine)[0]   //----------joined fields-----------------#####
//                (*tokenizedLine)[3],
//                (*tokenizedLine)[5],
//                (*tokenizedLine)[6]
                              );
        // NB. add here pruning concept, like notNULLABLE fields check.
        // push the read line in a node-class and then in the map
        (*dictionary).operator[]((*tokenizedLine)[0])=curRecord;//----------joined fields------------######
        // DBG  (*dictionary).operator[]((*tokenizedLine)[1])->internalPrint();
        res = true;
    }// if pruning evaluation passed; else prune record and return false.

*/


void Common::Dictionary::MapOperation::mapTraverseForward()
{
    if( nullptr!=this->dictionary)
    {
        std::cout<<"\n\n\t The map size is \t"<<this->dictionary->size()<<"\n";
        for( std::map<std::string, TheNode * >::iterator fwd=this->dictionary->begin();
             fwd != this->dictionary->end();
             fwd++
        )
        {
            std::cout<<"\t"<< fwd->first << "\t";
            if(nullptr!= fwd->second)
            {// second has its content
                fwd->second->internalPrint();
            }// second has its content
            else
            {// orphaned key
                std::cout<<"\t Orphaned key; it has no value.";
            }// orphaned key
        }// Traverse loop
        std::cout<<"\n\n\t The map size is \t"<<this->dictionary->size()<<"\n";
    }// if( nullptr!=dictionary)
    else
    {// map empty
        std::cout<<"\n\n\t The map is empty \n\n";
    }// map empty
}//mapTraverseForward


void Common::Dictionary::MapOperation::mapTraverseReverse()
{
    if( nullptr!=this->dictionary)
    {
        std::cout<<"\n\n\t The map size is \t"<<this->dictionary->size()<<"\n";
        for( std::map<std::string, TheNode * >::reverse_iterator bkwd=this->dictionary->rbegin();
             bkwd != this->dictionary->rend();
             bkwd++
        )
        {
            std::cout<<"\t"<< bkwd->first << "\t";
            if(nullptr!= bkwd->second)
            {// second has its content
                bkwd->second->internalPrint();
            }// second has its content
            else
            {// orphaned key
                std::cout<<"\t Orphaned key; it has no value.";
            }// orphaned key
        }// Traverse loop
        std::cout<<"\n\n\t The map size is \t"<<this->dictionary->size()<<"\n";
    }// if( nullptr!=dictionary)
    else
    {// map empty
        std::cout<<"\n\n\t The map is empty \n\n";
    }// map empty
}//mapTraverseReverse

void Common::Dictionary::MapOperation::mapNodeDestructorCaller()
{
    if( nullptr!=this->dictionary)
    {
        std::cout<<"\n\n\t Going to Destruct #_"<<this->dictionary->size()<<" Nodes\n";
        for( std::map<std::string, TheNode * >::reverse_iterator bkwd=this->dictionary->rbegin();
             bkwd != this->dictionary->rend();
             bkwd++
        )
        {
            // DBG std::cout<<"\tcallig Dtor of node : "<< bkwd->first << "\t";
            if(nullptr!= bkwd->second)
            {// second has its content
                delete bkwd->second;// pair' second Dtor
            }// second has its content
            else
            {// orphaned key
                std::cout<<"\t Orphaned key; it has no value to call the Destructor for..";
            }// orphaned key
        }// Traverse loop
    }// if( nullptr!=dictionary)
    else
    {// map empty
        std::cout<<"\n\n\t The map is empty \n\n";
    }// map empty
}//mapNodeDestructorCaller

void Common::Dictionary::MapOperation::mapListener()
{
    std::string requiredRecord("init");
    for(;;)
    {
        std::cout<<"\n\t Enter FFWD to Traverse Forward the Map";
        std::cout<<"\n\t Enter BKWD to Traverse Backward the Map";
        std::cout<<"\n\t Enter Required Map-key: ";
        std::cout<<"\n\t Enter \"Exit loop\" to abandon the application\n\n\t";
        std::getline(std::cin, requiredRecord);
        if(requiredRecord=="Exit loop")
        {
            //  this->mapNodeDestructorCaller(); DON'T---delete memory---MapOperation::Dtor already calls it.
            std::cout<< "\n\n\t Good bye !";
            break;
        }// else continue.
        else if("FFWD"==requiredRecord)
        {
            this->mapTraverseForward();
        }
        else if("BKWD"==requiredRecord)
        {
            this->mapTraverseReverse();
        }
        else
        {
            // DBG std::cout<<"\n\t required record:  "<< requiredRecord;
            nodeFinder( requiredRecord);
        }
    }//for
}// Listener


void Common::Dictionary::MapOperation::nodeFinder( std::string requiredkey)
{
    if( nullptr!=this->dictionary)
    {
        if(+1==(*dictionary).count( requiredkey))// which means te key is present
        {//if(nullptr!=(*dictionary).operator[]( requiredkey)) DON'T :this inserts a new pair.
            (*dictionary).at( requiredkey)->internalPrint();//NB. right way to search the value of a key.
            //(*dictionary).operator[]( requiredkey)->internalPrint(); do NOT use operator[] ,which is a writer.
        }// else skip, since the required key is absent in the map.
        else
        {
            std::cout<<"\n\n\t Key not found \n\n";
        }
    }// else skip, since file has not been opened and map has not been allocated.
    else
    {
        std::cout<<"\n\n\t The map is empty \n\n";
    }
    // ready.
}//nodeFinder

/*  cantina
a caller example
int main()
{
    std::string phoneBookStreamPath("./interni_IT_.txt");
	std::fstream theStream;
    std::map<std::string, TheNode * > * dataAcquisitionResult = readFileByLines( phoneBookStreamPath);
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
*/
