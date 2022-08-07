#ifndef MAPOPERATION_H_INCLUDED
#define MAPOPERATION_H_INCLUDED

#include <map>
#include "StringBuilder/StringBuilder.h"
#include "TheNode.h"

std::map<std::string, PhoneBookRecord * > * readFileByLines(std::string &where);
bool prune_RecordLayout( std::map<std::string, PhoneBookRecord * > * dictionary , std::vector<std::string> * tokenizedLine);
void mapTraverseForward( std::map<std::string, PhoneBookRecord * > * dictionary);
void mapTraverseReverse( std::map<std::string, PhoneBookRecord * > * dictionary);
void mapNodeDestructorCaller( std::map<std::string, PhoneBookRecord * > * dictionary);
void nodeFinder( std::map<std::string, PhoneBookRecord * > * dictionary , std::string requiredkey);
void mapListener(  std::map<std::string, PhoneBookRecord * > * dictionary );

#endif // MAPOPERATION_H_INCLUDED
