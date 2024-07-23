#include <stdio.h>

int main(int argc, char const *argv[]) {
  int test   = 0;
  int number = 0;

  scanf("%d", &test);

  /*
    If we get a remainder, the test
    number is not divisible by all
   */
  while (scanf("%d", &number) == 1) {
    if (test % number) {
      puts("not divisible by all");
      return 1;
    }
  }

  puts("divisible by all");

  return 0;
}
