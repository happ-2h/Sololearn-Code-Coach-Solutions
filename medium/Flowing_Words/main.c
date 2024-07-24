#include <stdio.h>

#define STRLEN_MAX 0xFF

int main(int argc, char const *argv[]) {
  char sentence[STRLEN_MAX];

  for (
    char* pch = fgets(sentence, STRLEN_MAX, stdin);
    *pch;
    ++pch
  ) {
    /*
      Space is between the end of a word and start of a new word

      Check the previous and next letter for inequality e.g.
        som[e] [s]entence - not a flowing word
     */
    if (*pch == ' ' && *(pch - 1) != *(pch + 1)) {
      puts("false");
      return 1;
    }
  }

  puts("true");

  return 0;
}
