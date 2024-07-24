#include <stdio.h>
#include <string.h>

#define STRLEN_MAX 0xFF

int main(int argc, char const *argv[]) {
  char input[STRLEN_MAX];
  int first = 1; // For the first letter

  fgets(input, STRLEN_MAX, stdin);

  // Replace newline with null terminator
  char* pch = strrchr(input, '\n');
  if (pch) *pch = '\0';

  for (pch = input; *pch; ++pch) {
    // First letter must be lowercase
    if (first) {
      fprintf(stdout, "%c", *pch | 0x60);
      first = 0;
    }
    // If it's uppercase, replace with underscore and lowercase the letter
    else if(*pch < 91) fprintf(stdout, "_%c", *pch | 0x60);
    // Otherwise, just print the character
    else putc(*pch, stdout);
  }

  return 0;
}
