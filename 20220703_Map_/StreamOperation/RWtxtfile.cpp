
#include <vector>
#include <string>
#include "RWtxtfile.h"
#include "../StringBuilder/StringBuilder.h"

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




/** \brief
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
 */
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

typedef struct PhoneBookRecord
{
    std::string name;
    std::string internal;
    std::string cellPhone;
    std::string email;
}; // typedef struct PhoneBookRecord

bool readFileByLines(std::string &where)
{
    fstream testFile;
    bool result = false;// init to invalid.
    list <PhoneBookRecord> data;
    list<PhoneBookRecord>::iterator iter;
    std::string curr_data;
    int i = 1;

    // Open for read : Input
    //system("pwd");
    std::cout<<"\n\t Stream to be opened: "<<where.c_str()<<std::endl;
	testFile.open( where.c_str(), std::ios::in );
    if (testFile.is_open())
    {
        std::cout<<"\n\t the Stream is open: "<<where.c_str()<<std::endl;
        result = true;
        while (!testFile.eof())
        {
            std::getline ( testFile, curr_data);// legge con separatore EOL
            if(testFile.eof()){break;}
            const std::string tokenToSplitOn("\t");
            std::vector<std::string> * tokenizedLine = Common::StrManipul::stringSplit( tokenToSplitOn, curr_data, false );
            /*
            std::cout <<"\n\t"<< (*tokenizedLine)[1].c_str()
                      <<  "\t"<< (*tokenizedLine)[2].c_str()
                      <<  "\t"<< (*tokenizedLine)[4].c_str()
                      <<  "\t"<< (*tokenizedLine)[5].c_str()
                      <<std::endl;
            */
            PhoneBookRecord curRecord;
            curRecord.name = (*tokenizedLine)[1];
            curRecord.internal = (*tokenizedLine)[2];
            curRecord.cellPhone = (*tokenizedLine)[4];
            curRecord.email = (*tokenizedLine)[5];
            data.push_back( curRecord);// push the read line in a struct and then in the list.
        }
        testFile.close();
    }// else result remains false; end File-read loop.
    else
    {
        std::cout<<"\n\t the Stream is NOT open: "<<where.c_str()<<std::endl;
    }
    //
    for (iter = data.begin(); iter != data.end(); iter++)
    {
       cout<<"Elemento di posizione "<<i<<" nella lista == "
            <<"\t"<< (*iter).name
//                      <<  "\t"<< (*tokenizedLine)[2].c_str()
//                      <<  "\t"<< (*tokenizedLine)[4].c_str()
//                      <<  "\t"<< (*tokenizedLine)[5].c_str()
                      <<std::endl;
       i++;
    }
    // ready.
    return result;
}// readFileByLines



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