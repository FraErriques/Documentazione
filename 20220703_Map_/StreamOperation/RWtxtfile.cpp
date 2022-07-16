#include <map>
#include "RWtxtfile.h"
#include "../StringBuilder/StringBuilder.h"



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
            PhoneBookRecord * curRecord = new PhoneBookRecord(
                        (*tokenizedLine)[1],
                        (*tokenizedLine)[2],
                        (*tokenizedLine)[4],
                        (*tokenizedLine)[5]
                                      );
            // push the read line in a struct and then in the map
            (*dictionary).operator[]((*tokenizedLine)[1])=curRecord;
            (*dictionary).operator[]((*tokenizedLine)[1])->internalPrint();
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


void mapTraverse( std::map<std::string, PhoneBookRecord * > * dictionary)
{
    if( nullptr!=dictionary)
    {
        for( std::map<std::string, PhoneBookRecord * >::reverse_iterator bkwd=dictionary->rbegin();
             bkwd != dictionary->rend();
             bkwd++
        )
        {
            std::cout<<"\t"<< bkwd->first << "\t";
            bkwd->second->internalPrint();
        }
    }
    else
    {
        std::cout<<"\n\n\t The map is empty \n\n";
    }
}//mapTraverse

void mapListener( std::map<std::string, PhoneBookRecord * > * dictionary , std::string requiredkey)
{
    if( nullptr!=dictionary)
    {
        if(nullptr!=(*dictionary).operator[]( requiredkey))
        {
            (*dictionary).operator[]( requiredkey)->internalPrint();
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
}//mapListener



/*  cantina

int readFileByChars()
{
  FILE * pFile;
  //int c;
  int i = 1;
//bool result = false;// init to invalid.
    list <int> data;
    list<int>::iterator iter;
    int curr_data;

  pFile=fopen ("test_readFileByChars_.txt","r");
  if (pFile==NULL) perror ("Error opening file");
  else
  {
    do
    {
        curr_data = getc (pFile);
        data.push_back(curr_data);// push the read char in a list.
    } while (curr_data != EOF);
    fclose (pFile);
    //
    for (iter = data.begin(); iter != data.end(); iter++)
    {
       cout<<"Elemento di posizione "<<i<<" nella lista (codice ASCII)== "<<*iter<<" ovvero simbolo "<< (char)(*iter)<<"\n";
       i++;
    }
    // ready.
  }
  return 0;
}// end readFileByChars


int RWtxtfile_demo_()
{
    fstream testFile;
    list <double> data;
    list<double>::iterator iter;
    double curr_data;
    double max_val = -1;
    int i = 1;

    //Input
	testFile.open("test.txt", ios::in);
    if (testFile.is_open())
    {
        while (!testFile.eof())
        {
            testFile>>curr_data;
            if (curr_data>max_val) max_val = curr_data;
            data.push_back(curr_data);
        }
        testFile.close();
    }

    //Stampa a video prima dell'elaborazione
    cout<<"\n\n";
    for (iter = data.begin(); iter != data.end(); iter++)
    {
       cout<<"Elemento di posizione "<<i<<" nella lista prima dell'elaborazione: "<<*iter<<"\n";
       i++;
    }
    cout<<"\n\n\n\tValore massimo contenuto nella lista: "<<max_val<<"\n\n\n";
    i = 0;

    //Elaborazione
    for (iter = data.begin(); iter != data.end(); iter++)
    {
       *iter = *iter/max_val;
    }

    //Stampa a video dopo l'elaborazione
    cout<<"\n\n";
    for (iter = data.begin(); iter != data.end(); iter++)
    {
       cout<<"Elemento di posizione "<<++i<<" nella lista dopo l'elaborazione: "<<*iter<<"\n";
       //i++;
    }

    //Output
    testFile.open("test.txt", ios::out | ios::app);
    if (testFile.is_open())
    {
        testFile<<"\n";
        for (iter = data.begin(); iter != data.end(); iter++)
        {
            testFile<<*iter<<" ";
        }
        testFile<<"\n";
        testFile.close();
    }

    return 0;
}


bool writeFileByWords( double *data, int hm)
{
    bool result = false;// init to invalid.
    fstream testFile;
    //
    //open to write Output
    testFile.open("test_writeFileByWords_.txt", ios::out | ios::app);//----NB.
    if (testFile.is_open())
    {
        result = true;
        testFile<<"\n";
        for(int c=0; c<hm; c++)
        {
            testFile<<*(data++)<<" ";
        }
        testFile<<"\n";
        testFile.flush();
        testFile.close();
    }// else result remains false.
    // ready.
    return result;
}// writeFileByWords




  \brief
 *
 * \param   ApplicationPoint is an array of two double, which represent the coordinates of the application point.
 * \param   FreeBound is an array of two double, which represent the coordinates of the free bound point, which is calculated adding the image of f(ApplicationPoint) to the ApplicationPoint itself, to obtain the affine image vector.
 * \param   hm is an integer, representing the dimension of the immersion environment; R2 in the present case, then hm==2.
 * \return  a bool, which is true in case of successful file write.
 *
 * The file has to respect the following syntax rules:
 *
 Graphics[ {
  Arrow[{{2, 2}, {1, 1}}],
  Arrow[{{1.8, 1.6}, {1.1, 1.3}}],
  Arrow[{{0.8, 0.6}, {0, 0}}],
  Arrow[{{1.5, 1.2}, {1.2, 1}} ]
    } , Axes -> True]
 *

bool writeVectorFieldR2Affine( double *ApplicationPoint, double *FreeBound, int hm)
{
    bool result = false;// init to invalid.
    fstream testFile;
    //open to write Output
    testFile.open("writeVectorFieldR2Affine_.txt", ios::out | ios::app);//----NB.
    if (testFile.is_open())
    {
        result = true;
        //testFile<<"\n Arrow[{ {placeHolder_ApplicationPoint_X, placeHolder_ApplicationPoint_Y}, {placeHolder_FreeBound_X, placeHolder_FreeBound_Y} }],";
        testFile<<"\n Arrow[{ {"<<ApplicationPoint[0]<<", "<<ApplicationPoint[1]<<"}, {"<<FreeBound[0]<<", "<<FreeBound[1]<<"} }],";
        testFile.flush();
        testFile.close();
    }// else result remains false.
    // ready.
    return result;
}// writeFileByWords



bool readFileByWords()
{
    fstream testFile;
    bool result = false;// init to invalid.
    list <double> data;
    list<double>::iterator iter;
    double curr_data;
    int i = 1;

    // Open for read : Input
	testFile.open("test_writeFileByWords_.txt", ios::in);
    if (testFile.is_open())
    {
        result = true;
        while (!testFile.eof())
        {
            testFile>>curr_data;// legge con separatore blank (i.e. ' ') or TAB '\t' or '\n' or '\r'.
            data.push_back(curr_data);// push the read word in a list.
        }
        testFile.close();
    }// else result remains false; end File-read loop.
    //
    for (iter = data.begin(); iter != data.end(); iter++)
    {
       cout<<"Elemento di posizione "<<i<<" nella lista == "<<*iter<<"\n";
       i++;
    }
    // ready.
    return result;
}// readFileByWords

*/
