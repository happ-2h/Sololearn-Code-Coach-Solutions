#include <stdio.h>
#include <string.h>

#define STRLEN_MAX 0xFF

int main(int argc, char const *argv[]) {
  char sentence[STRLEN_MAX];

  fgets(sentence, STRLEN_MAX, stdin);

  // Replace newline with null terminator
  char* pch = strrchr(sentence, '\n');
  if (pch) *pch = '\0';

  pch = strtok(sentence, " ");

  while(pch) {
    fprintf(stdout, "%s%cay ", pch + 1, *pch);
    pch = strtok(NULL, " ");
  }

  return 0;
}
