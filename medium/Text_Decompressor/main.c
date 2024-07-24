#include <stdio.h>

#define STRLEN_MAX 0xFF

int main(int argc, char const *argv[]) {
  char text[STRLEN_MAX];

  for (
    char* pch = fgets(text, STRLEN_MAX, stdin);
    *pch && *pch != '\n';
    ++pch
  ) {
    char temp = *pch; // Save the character to print
    ++pch;            // Increment the pointer for the number
    // Print the character n times
    while((*pch)-- > '0') putc(temp, stdout);
  }

  return 0;
}
