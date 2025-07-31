#include <stdio.h>
#include <string.h>

#define STRLEN_MAX 0xFF

int main(int argc, char const *argv[]) {
  char snacks[STRLEN_MAX];
  int  snackPts = 0;

  fgets(snacks, STRLEN_MAX, stdin);

  // Replace newline with null terminator
  char* pch = strrchr(snacks, '\n');
  if (pch) *pch = '\0';

  pch = strtok(snacks, " ");

  while(pch) {
    // Add up all the points
    if      (strncmp(pch, "Lettuce", 8) == 0) snackPts += 5;
    else if (strncmp(pch, "Carrot",  8) == 0) snackPts += 4;
    else if (strncmp(pch, "Mango",   8) == 0) snackPts += 9;

    pch = strtok(NULL, " ");
  }

  fprintf(stdout, "%s",
    snackPts >= 10 ?    // Do we have the right snacks?
      "Come on Down!" : // Yes, the iguana comes down right away
      "Time to wait"    // No, it will take its time to come down
  );

  return 0;
}
