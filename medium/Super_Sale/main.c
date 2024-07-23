#include <stdio.h>

int main(int argc, char const *argv[]) {
  double item = 0.0f;
  double ttl  = 0.0f;
  double max  = 0.0f; // Most expensive item

  // Find the most expensive item and the total of all items
  while(scanf("%lf,", &item) == 1) {
    if (item > max) max = item;
    ttl += item;
  }

  /*
    First remove the most expensive item from the total
    since we dont discount it
      ttl - max

    The we add the 30% discount
      (ttl - max) * 0.3

    Then add 7% taxes
      (ttl - max) * 0.3 * 1.07

    Finally, give up the fractional portion as a tip
      ⌊(ttl - max) * 0.3 * 1.07⌋
   */
  fprintf(stdout, "%d", (int)((ttl - max) * 0.3 * 1.07));

  return 0;
}
