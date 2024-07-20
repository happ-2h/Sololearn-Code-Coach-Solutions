#include <stdio.h>
#include <string.h>

#define STRLEN_MAX 0xFF

int main(int argc, char const *argv[]) {
  char noises[STRLEN_MAX];

  fgets(noises, STRLEN_MAX, stdin);

  // Replace newline with null terminator
  char* pch = strrchr(noises, '\n');
  if (pch) *pch = '\0';

  pch = strtok(noises, " ");

  // Output animal based on noise
  while(pch) {
    if      (strncmp(pch, "Grr",   5) == 0) printf("Lion ");
    else if (strncmp(pch, "Rawr",  5) == 0) printf("Tiger ");
    else if (strncmp(pch, "Ssss",  5) == 0) printf("Snake ");
    else if (strncmp(pch, "Chirp", 5) == 0) printf("Bird ");

    pch = strtok(NULL, " ");
  }

  return 0;
}
