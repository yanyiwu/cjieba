#include <stdio.h>
#include <stdlib.h>

#include "src/c_api.h"

static const char* DICT_PATH = "./dict/jieba.dict.utf8";
static const char* HMM_PATH = "./dict/hmm_model.utf8";
static const char* USER_DICT = "./dict/user.dict.utf8";

int main() {
  // init will take a few seconds to load dicts.
  CJieba handle = NewCJieba(DICT_PATH, HMM_PATH, USER_DICT); 

  char** words = Cut(handle, "南京市长江大桥"); 
  char** x = words;
  while (x && *x) {
    printf("%s\n", *x);
    x++;
  }
  FreeWords(words);
  FreeCJieba(handle);
  return 0;
}
