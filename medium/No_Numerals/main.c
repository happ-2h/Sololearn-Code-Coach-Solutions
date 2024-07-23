#include <ctype.h>
#include <stdio.h>

#define STRLEN_MAX 0xFF

int main(int argc, char const *argv[]) {
  char phrase[STRLEN_MAX];

  fgets(phrase, STRLEN_MAX, stdin);

  for (
    size_t i = 0;
    phrase[i] != '\n' && phrase[i] != '\0' && i < STRLEN_MAX;
    ++i
  ) {
    if (isdigit(phrase[i])) {
      // If 10 encountered
      if (i + 1 < STRLEN_MAX && phrase[i] == '1' && phrase[i + 1] =='0') {
        puts("ten");
        ++i; // Skip '0'
      }
      // If < 10 encountered
      else {
        switch(phrase[i]) {
          case '1': fprintf(stdout, "one"); break;
          case '2': fprintf(stdout, "two"); break;
          case '3': fprintf(stdout, "three"); break;
          case '4': fprintf(stdout, "four"); break;
          case '5': fprintf(stdout, "five"); break;
          case '6': fprintf(stdout, "six"); break;
          case '7': fprintf(stdout, "seven"); break;
          case '8': fprintf(stdout, "eight"); break;
          case '9': fprintf(stdout, "nine"); break;
          default: puts("Unknown number encountered"); break;
        }
      }
    }
    else fprintf(stdout, "%c", phrase[i]); // Not a digit
  }

  return 0;
}
