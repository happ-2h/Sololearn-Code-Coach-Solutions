#include <stdio.h>

#define STRLEN_MAX 0xFF

int main(int argc, char const *argv[]) {
  char input[STRLEN_MAX];
  int foundH = 0; // Did we find the house
  int nBlocks = 0;

  scanf("%s", input);

  /*
    Cases to consider
      BBPBBBBH - Pool before House
      BBHBBBBP - House before Pool
   */
  for (char *pch = input; *pch; ++pch) {
    // If we found the house and are at the pool
    if (foundH && *pch == 'P' | *pch == 'H') break; // Done
    // If we haven't found the house and are at the house
    if (!foundH && *pch == 'H' | *pch == 'P') foundH = 1; // Set flag
    // If we found the house and are at a block
    if (foundH && *pch == 'B') ++nBlocks; // count the block
  }

  fprintf(stdout, "%d", nBlocks);

  return 0;
}
