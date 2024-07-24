#include <stdio.h>

#define STRLEN_MAX 0xFF

int main(int argc, char const *argv[]) {
  char input[STRLEN_MAX];
  int n = 0;

  scanf("%s%d", input, &n);

  int i = 0;
  for (char* pch = input; *pch != '\n' && *pch != '\0' && *pch; ++pch) {
    fprintf(stdout, "%c", *pch);
    ++i;
    // If the character position is divisible by N, print '-'
    if (i != 0 && !(i%n) && *(pch+1)) putc('-', stdout);
  }

  return 0;
}
