#include <ctype.h>
#include <stdio.h>

#define STRLEN_MAX 0xFF

int main(int argc, char const *argv[]) {
  char symbols[STRLEN_MAX];

  // Print only letters and numbers
  for (char* pch = fgets(symbols, STRLEN_MAX, stdin); *pch; ++pch)
    if (isalnum(*pch) || *pch == ' ') putc(*pch, stdout);

  return 0;
}
