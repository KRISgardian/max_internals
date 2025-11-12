#pragma once



#ifndef UNICODE
#define UNICODE
#endif


#include <iostream>
#include <filesystem>
#include <regex>



namespace internalfs{
    // Return founded file by given name. Return std::string.empty() == True
    // if file wasn't found.
    template<typename T>
    T &findFileByName(T &fileName){
        std::regex pattern(fileName);
        for(auto& entry: std::filesystem::directory_iterator(fileName)){
            if(entry.is_regular_file() && std::regex_match(entry.path().filename(), pattern)){
                return entry.path().filename();
            }
        }
        return std::string;
    }
}