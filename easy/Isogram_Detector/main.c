#include <stdio.h>
#include <string.h>

#define STRLEN_MAX 0xFF
#define NALPHABET    26

int main(int argc, char const *argv[]) {
  char word[STRLEN_MAX];
  int charCount[NALPHABET];
  int repeated = 0;

  // Initialize charCount
  for (size_t i = 0; i < NALPHABET; ++i) charCount[i] = 0;

  fgets(word, STRLEN_MAX, stdin);

  // Replace newline with null terminator
  char* pch = strrchr(word, '\n');
  if (pch) *pch = '\0';

  /*
    Use the character's placement in the
    alphabet to increment its appropriate
    memory slot.
    Lowercased since A = a, B = b, etc.

    If that slot has been incrememnted more than once,
    then there is a repeated letter
   */
  for (size_t i = 0; !repeated && i < strlen(word); ++i)
    if (++charCount[(word[i] | 0x20) - 'a'] > 1) repeated = 1;

  fprintf(stdout, "%s", repeated ? "false" : "true");

  return 0;
}
