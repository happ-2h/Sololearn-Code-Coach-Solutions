#include <stdio.h>
#include <string.h>

#define STRLEN_MAX 0xFF

int main(int argc, char const *argv[]) {
  char names[STRLEN_MAX];
  char name[STRLEN_MAX];
  int  hasBuddy = 0;

  fgets(names, STRLEN_MAX, stdin);
  fgets(name,  STRLEN_MAX, stdin);

  char* pch = strtok(names, " ");

  /*
    Check if any first character matches with yours
    If so, a buddy was found, break
    Else, no buddy was found
   */
  while(pch) {
    if (pch[0] == name[0]) {
      hasBuddy = 1;
      break;
    }

    pch = strtok(NULL, " ");
  }

  fprintf(stdout, "%s",
    hasBuddy ? "Compare notes" : "No such luck"
  );

  return 0;
}
