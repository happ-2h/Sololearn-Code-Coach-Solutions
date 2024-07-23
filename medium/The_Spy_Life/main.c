#include <ctype.h>
#include <stdio.h>
#include <string.h>

#define STRLEN_MAX 0xFF

int main(int argc, char const *argv[]) {
  char message[STRLEN_MAX];

  fgets(message, STRLEN_MAX, stdin);

  // Replace newline with null terminator
  char* pch = strrchr(message, '\n');
  if (pch) *pch = '\0';

  /*
    Start at the end of the message
    If the character is a letter or
    a space, print it
   */
  for (size_t i = strlen(message); i-- > 0;) {
    if (isalpha(message[i]) || message[i] == ' ')
      putc(message[i], stdout);
  }

  return 0;
}
