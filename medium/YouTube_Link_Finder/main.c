#include <stdio.h>
#include <string.h>

#define STRLEN_MAX 0xFF

int main(int argc, char const *argv[]) {
  char url[STRLEN_MAX];

  fgets(url, STRLEN_MAX, stdin);

  // Replace newline with null terminator
  char* pch = strrchr(url, '\n');
  if (pch) *pch = '\0';

  /*
    Since the video ID is at the end, start
    traversing backwards from the end

    while we haven't reached '=', '/', or the
    start of the string, keep traversing
   */
  pch = url + strlen(url); // Pointer to the end of the url
  while(*--pch != '=' && *pch != '/');

  /*
    Since we are at '=' or '/', print the
    current address + 1
   */
  puts(pch + 1);

  return 0;
}
