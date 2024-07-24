#include <ctype.h>
#include <math.h>
#include <stdio.h>

#define STRLEN_MAX 0xFF

int main(int argc, char const *argv[]) {
  char words[STRLEN_MAX];
  double nWords   = 0.0f;
  double nLetters = 0.0f;

  fgets(words, STRLEN_MAX, stdin);

  /*
    Add up the letters and words and find the
    average word length
      number of letters / number of words
   */
  for (char* pch = words; *pch; ++pch) {
    if (isalpha(*pch)) ++nLetters;
    else if (*pch == ' ') ++nWords;
  }

  // Increment number of words since the last word isn't counted
  fprintf(stdout, "%d", (int)ceil(nLetters/(++nWords)));

  return 0;
}
