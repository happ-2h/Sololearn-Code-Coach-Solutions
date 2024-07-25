#include <ctype.h>
#include <stdio.h>
#include <string.h>

#define STRLEN_MAX 0xFF

int main(int argc, char const *argv[]) {
  char password[STRLEN_MAX];
  int nNums    = 0; // Numbers
  int nSpecial = 0; // Special characters

  // Count numerals and special characters
  for (
    char* pch = fgets(password, STRLEN_MAX, stdin);
    *pch;
    ++pch
  ) {
    if (isdigit(*pch)) ++nNums;
    else if (strrchr("!@#$%&*", *pch)) ++nSpecial;
  }

  /*
    Strong if at least:
      2 numbers
      2 special characters (!@#$%&*)
      length of 7
   */
  fprintf(stdout, "%s",
    nNums > 1 && nSpecial > 1 && strlen(password) > 6 ?
      "Strong" :
      "Weak"
  );

  return 0;
}
