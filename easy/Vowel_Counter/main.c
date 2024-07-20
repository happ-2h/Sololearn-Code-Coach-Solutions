#include <stdio.h>
#include <string.h>

#define STRLEN_MAX 0xFF

int main(int argc, char const *argv[]) {
  char sentence[STRLEN_MAX];
  int nVowels = 0;

  fgets(sentence, STRLEN_MAX, stdin);

  // Replace newline with null terminator
  char* pch = strrchr(sentence, '\n');
  if (pch) *pch = '\0';

  /*
    Count all the vowels in a given sentence
    Lowercase the character to prevent extra checks
   */
  for (pch = sentence; *pch; ++pch) {
    switch(*pch | 0x20) {
      case 'a':
      case 'e':
      case 'i':
      case 'o':
      case 'u':
        ++nVowels;
        break;
      default: break;
    }
  }

  fprintf(stdout, "%d", nVowels);

  return 0;
}
