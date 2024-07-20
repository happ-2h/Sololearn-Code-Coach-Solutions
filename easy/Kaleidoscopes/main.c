#include <stdio.h>

#define KALEIDOSCOPE_PRICE 5.0f

int main(int argc, char const *argv[]) {
  int nKaleido = 0;
  double ttl = 0.0f;

  scanf("%d", &nKaleido);

  /*
    Total before taxes
      ttl = amountBought * price

    If more than one was bought, remove 10% on each
      ttl -= (amountBought * 5.00 * 0.10) =>
      ttl -= (amountBought * 0.5)

    Finally, add the 7% tax
      ttl *= 1.07
   */
  ttl = nKaleido * KALEIDOSCOPE_PRICE;

  if (nKaleido > 1) ttl -= nKaleido * 0.5f;
  ttl *= 1.07;

  fprintf(stdout, "%.2f", ttl);

  return 0;
}
