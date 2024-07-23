#include <stdio.h>

int main(int argc, char const *argv[]) {
  int number = 0;

  // Print the number if it's even
  while (scanf("%d", &number) == 1)
    if (!(number&1)) fprintf(stdout, "%d ", number);

  return 0;
}
