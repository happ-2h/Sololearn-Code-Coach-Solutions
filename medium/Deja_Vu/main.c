#include <stdio.h>
#include <string.h>

#define STRLEN_MAX 0xFF

int main(int argc, char const *argv[]) {
  char letters[STRLEN_MAX];

  fgets(letters, STRLEN_MAX, stdin);

  // Replace newline with null terminator
  char* pch = strrchr(letters, '\n');
  if (pch) *pch = '\0';

  /*
    Go through each letter, and if a
    duplicate was found, stop
   */
  for (pch = letters; *pch; ++pch)
    if (strrchr(pch + 1, *pch)) break;

  fprintf(stdout, "%s", *pch ? "Deja Vu" : "Unique");

  return 0;
}
