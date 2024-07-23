#include <stdio.h>

#define STRLEN_MAX 0xFF

int main(int argc, char const *argv[]) {
  char message[STRLEN_MAX];

  fgets(message, STRLEN_MAX, stdin);

  /*
    For every character,
    If it's a space, print it,
    Else, get the offset from the character
    to 'a', then traverse the alphabet
    backwards (starting from 'z')
    to get the encoded character
   */
  for (char* pch = message; *pch; ++pch)
    fprintf(stdout, "%c",
      *pch == ' ' ?
        *pch :
        'z' - ((*pch|0x60)) - 'a'
    );

  return 0;
}
