#include <stdio.h>

#define STRLEN_MAX 0xFF

int main(int argc, char const *argv[]) {
  int nNames = 0;
  char name[STRLEN_MAX];
  char initials[STRLEN_MAX];

  scanf("%d", &nNames);
  while(getchar() != '\n'); // Flush the newline

  size_t ni = 0;
  for (int i = 0; i < nNames; ++i) {
    // Save all capital letters
    for (char* pch = fgets(name, STRLEN_MAX, stdin); *pch; ++pch) {
      if (*pch != '\n' && !(*pch&0x20)) initials[ni++] = *pch;
    }
    initials[ni++] = ' ';
  }

  initials[ni] = '\0';

  puts(initials);

  return 0;
}
