#include <stdio.h>
#include <string.h>

#define STRLEN_MAX 0xFF

int main(int argc, char const *argv[]) {
  char layout[STRLEN_MAX];

  fgets(layout, STRLEN_MAX, stdin);

  // Replace newline with null terminator
  char* pch = strrchr(layout, '\n');
  if (pch) *pch = '\0';

  pch = strtok(layout, "x");

  char res[4] = "   \0";
  int i = 0;

  // Remove 'x' characters and move result to res array
  while(pch) {
    res[i++] = pch[0];
    if (pch[1] == '$') res[i++] = '$';
    pch = strtok(NULL, "x");
  }

  // Determine if there is no guard between the $ and T
  int activate =
    (res[0] == '$' && res[1] == 'T') ||
    (res[1] == '$' && res[0] == 'T') ||
    (res[1] == '$' && res[2] == 'T') ||
    (res[2] == '$' && res[1] == 'T');

  fprintf(stdout, "%s", activate ? "ALARM" : "quiet");

  return 0;
}
