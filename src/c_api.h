#ifndef CJIEBA_C_API_H
#define CJIEBA_C_API_H

struct MixSegment * NewMixSegment(const char* dict_path, const char* hmm_path, const char* user_dict);
void FreeMixSegment(struct MixSegment* );
char * MixSegmentCut(const struct MixSegment* segment, const char* sentence, const char* seperator);

#endif
