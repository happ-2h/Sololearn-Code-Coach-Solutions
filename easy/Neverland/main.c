#include <stdio.h>

int main(int argc, char const *argv[]) {
  int age   = 0;
  int years = 0;

  scanf("%d%d", &age, &years);

  /*
    Your twin (same age) ages normally
      twinAge = initialAge + yearsPassed
   */
  fprintf(stdout,
    "My twin is %d years old and they are %d years older than me",
    age + years, years
  );

  return 0;
}
