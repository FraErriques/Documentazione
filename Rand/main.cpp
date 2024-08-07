#include <iostream>
#include "ClassicalContinuousGenerator.h"
#include "ClassicalDiscreteGenerator.h"


void monolite_continuous()
{// MonteCarlo on continuous:
    double left  = 0;//-92.809;
    double right = +1;//+12.209;
    int populationCardinality = 1000;
    //
    std::cout<<"\n\t -------- START continuous model \n"<<std::endl;
    Common::MonteCarlo::ClassicalContinuousGenerator * monteCGen_D =
        new Common::MonteCarlo::ClassicalContinuousGenerator(  left, right);// Ctor

    for( int c=0; c<populationCardinality;c++)
    {
        monteCGen_D->nextDoubleInInterval();
    }
//    monteCGen_D->showContinuousPopulation();
    monteCGen_D->buildOmega( left, right );
    monteCGen_D->buildContinuousFrequencyDistribution();
    monteCGen_D->showFrequencyDistribution();
    monteCGen_D->showCumulatedFrequency();
    //--change distro

    left  = -90;
    right = -80;
    monteCGen_D->resetExtractionInterval( left, right);// NB. compulsory
    populationCardinality = 700;
    for( int c=0; c<populationCardinality;c++)
    {
        monteCGen_D->nextDoubleInInterval();
    }
    //monteCGen_D->showContinuousPopulation();
    monteCGen_D->buildOmega( left, right );
    monteCGen_D->buildContinuousFrequencyDistribution();
    monteCGen_D->showFrequencyDistribution();
    monteCGen_D->showCumulatedFrequency();
    //---clean
    delete monteCGen_D;// Dtor
    //---ready
    // end MonteCarlo
}// monolite_continuous


void monolite_discrete()
{// MonteCarlo on discrete:
    int left  = +5;
    int right = +6;
    int populationCardinality = 100000;
    //
    Common::MonteCarlo::ClassicalDiscreteGenerator * monteCGen =
    new Common::MonteCarlo::ClassicalDiscreteGenerator();// Ctor
    monteCGen->resetExtractionInterval( left, right);// NB. compulsory
    for( int c=0; c<populationCardinality;c++)
    {
        monteCGen->nextIntegerInInterval();
    }
//    monteCGen->showDiscretePopulation();
    monteCGen->buildOmega( left, right );
    monteCGen->buildDiscreteFrequencyDistribution();
    std::cout<<"\n\n\t -------- START discrete model;"<<std::endl;
    monteCGen->showFrequencyDistribution();
    monteCGen->showCumulatedFrequency();
    delete monteCGen;
    std::cout<<"\n\t -------- END discrete model;\n"<<std::endl;
}// MonteCarlo on discrete:


int main()
{
    monolite_continuous();
    monolite_discrete();

    //
    std::cout << "\n\n\t Strike Enter to leave " << std::endl;
    getchar();
    return 0;
}// main

/*  ----- cantina ---------------

void discreteGenerator()
{
//    Common::MonteCarlo::ClassicalDiscreteGenerator * monteCGen =
//    new Common::MonteCarlo::ClassicalDiscreteGenerator();// Ctor
//    monteCGen->resetExtractionInterval( left, right);// NB. compulsory
//    for( int c=0; c<populationCardinality;c++)
//    {
//        monteCGen->nextIntegerInInterval();
//    }
//    //monteCGen->showDiscretePopulation();
//    monteCGen->buildOmega( left, right );
//    monteCGen->buildDiscreteFrequencyDistribution();
//    std::cout<<"\n\n\t -------- START discrete model;"<<std::endl;
//    monteCGen->showFrequencyDistribution();
//    monteCGen->showCumulatedFrequency();
//    delete monteCGen;
//    std::cout<<"\n\t -------- END discrete model;\n"<<std::endl;
}// discreteGenerator

void stringSplit()
{
//  std::string s("Nel mezzo#@# del cammin#@# di nostra vita,#@# mi ritrovai#@#  #@# #@# #@# per una selva oscura#@#.");
//  std::vector<std::string> * tokens = Common::StrManipul::stringSplit("#@#", s, false);
//  std::vector<std::string> * cleanTokens = Common::StrManipul::removeEmptyEntries( tokens);
//
//  if( NULL != tokens)
//  {
//  for( std::vector<std::string>::const_iterator readerTk = tokens->begin();
//        readerTk != tokens->end();
//        readerTk++
//     )
//    {
//        std::cout<< *readerTk<<std::endl;
//    }
//  }// else skip on NULL.
//  //
//  if( NULL != cleanTokens)
//  {
//  for( std::vector<std::string>::const_iterator readerCleanTk = cleanTokens->begin();
//        readerCleanTk != cleanTokens->end();
//        readerCleanTk++
//     )
//    {
//        std::cout<< *readerCleanTk<<std::endl;
//    }
//  }// else skip on NULL.
//  //
//  delete tokens;
//  delete cleanTokens;
}// stringSplit

void baseConverter()
{
//    Common::MonteCarlo::BaseConverter b(false);
//    const unsigned long threshold = +1.5E6;
//    for(unsigned long c=0; c<threshold; c++)
//    {
//        for( int base=2; base<=64; base++)
//        {
//            std::string * converted = b.baseOtherConverterTo( c, base);
//            unsigned long reConverted = b.base10ConverterTo( *converted, base);
//            if( reConverted != c)
//            {
//                std::cout<<"\n\t Allarme ! c:"<<c<<" base:"<<base<<std::endl;
//            }
//            else
//            {
////                std::cout<<"\n\t OK ! converted: "<<*converted
////                <<" reConverted:"<<reConverted
////                <<" original:"<<c
////                <<" base:"<<base<<std::endl;
//            }
//            delete converted;
//        }// for
//    }// for
}// baseConverter

*/
