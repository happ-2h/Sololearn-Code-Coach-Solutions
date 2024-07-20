#include <stdio.h>

int main(int argc, char const *argv[]) {
  int nFruit = 0;

  scanf("%d", &nFruit);

  /*
    Half are apples
      nFruit / 2

    You need 3 apples to make 1 pie
    Calculate how many pies you can make
      nFruit / 2 / 3 => nFruit / 6
   */
  fprintf(stdout, "%d", nFruit / 6);

  return 0;
}
