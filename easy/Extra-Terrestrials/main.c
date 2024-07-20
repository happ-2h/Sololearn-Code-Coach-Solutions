#include <stdio.h>
#include <string.h>

// Longest English word is 45 letters + 1 null terminator
#define STRLEN_MAX 0x2E

int main(int argc, char const *argv[]) {
  char word[STRLEN_MAX];

  // Print the string backwards
  for (
    size_t i = strlen(fgets(word, STRLEN_MAX, stdin));
    i-- > 0;
  ) putchar(word[i]);

  return 0;
}
