#include <stdio.h>

int main(int argc, char const *argv[]) {
  double price = 0.0f;
  double ttl   = 0.0f;

  /*
    Calculate the total
    If the price is greater than 20
      Pay normal price
    Else pay with 7% tax
   */
  while(scanf("%lf,", &price) == 1)
    ttl += price > 20.0f ? price : price * 1.07;

  fprintf(stdout, "%.2lf", ttl);

  return 0;
}
