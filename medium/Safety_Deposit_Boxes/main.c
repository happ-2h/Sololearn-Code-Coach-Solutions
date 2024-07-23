#include <stdio.h>
#include <string.h>

#define STRLEN_MAX 0xFF

int main(int argc, char const *argv[]) {
  char items[STRLEN_MAX];
  char item[STRLEN_MAX];
  int time = 0;

  fgets(items, STRLEN_MAX, stdin);
  fgets(item, STRLEN_MAX, stdin);

  // Replace newline with null terminator
  char* pch = strrchr(items, '\n');
  if (pch) *pch = '\0';
  pch = strrchr(item, '\n');
  if (pch) *pch = '\0';

  pch = strtok(items, ",");

  /*
    Every box takes 5 minutes to drill
    If we found the item, we stop
   */
  while(pch) {
    time += 5;

    if (strncmp(pch, item, STRLEN_MAX) == 0) break;

    pch = strtok(NULL, ",");
  }

  fprintf(stdout, "%d", time);

  return 0;
}
