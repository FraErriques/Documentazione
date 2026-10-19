
#include <fstream>
#include "MapOperation.h"

// the input parameter "where" is the path of the data file.
// the return value is a pointer to the filled map; the caller has to delete it.
std::map<std::string, PhoneBookRecord * > * readFileByLines(std::string &where)
{
    std::fstream testFile;
    std::map<std::string, PhoneBookRecord * > * dictionary = nullptr;// init to invalid.
    std::string curr_data;

    std::cout<<"\n\t Stream to be opened: "<<where.c_str()<<std::endl;
    // Open for read : Input
	testFile.open( where.c_str(), std::ios::in );
    if (testFile.is_open())
    {
        std::cout<<"\n\t the Stream is open: "<<where.c_str()<<std::endl;
        dictionary = new std::map<std::string, PhoneBookRecord * >();
        while (!testFile.eof())
        {
            std::getline ( testFile, curr_data);// legge con separatore EOL
            if(testFile.eof()){break;}
            const std::string tokenToSplitOn("\t");
            std::vector<std::string> * tokenizedLine = Common::StrManipul::stringSplit( tokenToSplitOn, curr_data, false );
            // call insertion prune-filter
            bool hasBeenAcceptedForInsertion = prune_RecordLayout( dictionary, tokenizedLine);
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
    return dictionary;
}// readFileByLines

bool prune_RecordLayout( std::map<std::string, PhoneBookRecord * > * dictionary , std::vector<std::string> * tokenizedLine)
{// NB. put here REcordLayout knowledge about field position and content;
    bool res = false;// init to invalid
    if(+1)// NB. put here REcordLayout knowledge about field position and content;
    {
        PhoneBookRecord * curRecord = new PhoneBookRecord(
                (*tokenizedLine)[2],// NB. ### has to be the same!###########################################
                (*tokenizedLine)[3],
                (*tokenizedLine)[5],
                (*tokenizedLine)[6]
                              );
        // NB. add here pruning concept, like notNULLABLE fields check.
        // push the read line in a node-class and then in the map
        (*dictionary).operator[]((*tokenizedLine)[2])=curRecord;// NB. ### has to be the same!################
        // DBG  (*dictionary).operator[]((*tokenizedLine)[1])->internalPrint();
        res = true;
    }// if pruning evaluation passed; else prune record and return false.
    // ready
    return res;
}// prune_RecordLayout

void mapTraverseForward( std::map<std::string, PhoneBookRecord * > * dictionary)
{
    if( nullptr!=dictionary)
    {
        std::cout<<"\n\n\t The map size is \t"<< dictionary->size()<<"\n";
        for( std::map<std::string, PhoneBookRecord * >::iterator fwd=dictionary->begin();
             fwd != dictionary->end();
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
        std::cout<<"\n\n\t The map size is \t"<< dictionary->size()<<"\n";
    }// if( nullptr!=dictionary)
    else
    {// map empty
        std::cout<<"\n\n\t The map is empty \n\n";
    }// map empty
}//mapTraverseForward


void mapTraverseReverse( std::map<std::string, PhoneBookRecord * > * dictionary)
{
    if( nullptr!=dictionary)
    {
        std::cout<<"\n\n\t The map size is \t"<< dictionary->size()<<"\n";
        for( std::map<std::string, PhoneBookRecord * >::reverse_iterator bkwd=dictionary->rbegin();
             bkwd != dictionary->rend();
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
        std::cout<<"\n\n\t The map size is \t"<< dictionary->size()<<"\n";
    }// if( nullptr!=dictionary)
    else
    {// map empty
        std::cout<<"\n\n\t The map is empty \n\n";
    }// map empty
}//mapTraverseReverse

void mapNodeDestructorCaller( std::map<std::string, PhoneBookRecord * > * dictionary)
{
    if( nullptr!=dictionary)
    {
        for( std::map<std::string, PhoneBookRecord * >::reverse_iterator bkwd=dictionary->rbegin();
             bkwd != dictionary->rend();
             bkwd++
        )
        {
            std::cout<<"\tcallig Dtor of node : "<< bkwd->first << "\t";
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

void mapListener(  std::map<std::string, PhoneBookRecord * > * dictionary )
{
    std::string requiredRecord;
    for(;;)
    {
        std::cout<<"\n\t Enter FFWD to Traverse Forward the Map";
        std::cout<<"\n\t Enter BKWD to Traverse Backward the Map";
        std::cout<<"\n\t Enter Required Map-key: ";
        std::cout<<"\n\t Enter \"Exit loop\" to abandon the application\n\n\t";
        std::getline(std::cin, requiredRecord);// means(getline(fromKeyboard, into__)
        if(requiredRecord=="Exit loop")
        {
            std::cout<< "\n\n\t Good bye !";
            break;
        }// else continue.
        else if("FFWD"==requiredRecord)
        {
            mapTraverseForward( dictionary );
        }
        else if("BKWD"==requiredRecord)
        {
            mapTraverseReverse( dictionary );
        }
        else
        {
            // DBG std::cout<<"\n\t required record:  "<< requiredRecord;
            nodeFinder( dictionary, requiredRecord);
        }
    }//for
}


void nodeFinder( std::map<std::string, PhoneBookRecord * > * dictionary , std::string requiredkey)
{
    if( nullptr!=dictionary)
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

