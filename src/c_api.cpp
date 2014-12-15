//extern "C" {
//#include "c_api.h"
//}

#include "CppJieba/MixSegment.hpp"

using namespace CppJieba;

extern "C" {

MixSegment * NewMixSegment(const char* dict_path, const char* hmm_path, const char* user_dict)
{
    MixSegment * handler = new MixSegment(dict_path, hmm_path, user_dict);
    return handler;
}
void FreeMixSegment(struct MixSegment* handle)
{
    delete handle;
}
char * MixSegmentCut(const struct MixSegment* segment, const char* sentence, const char* seperator)
{
    vector<string> words;
    segment->cut(sentence, words);
    string str = join(words.begin(), words.end(), seperator);
    if(str.empty())
    {
        return NULL;
    }
    size_t size = str.size() + 1;
    char* res = (char*)malloc(size);
    memcpy(res, str.c_str(), size);
    return res;
}

}
