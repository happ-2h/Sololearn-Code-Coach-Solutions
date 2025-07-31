#include <stdio.h>

/*
  Since the numbers only change in
  the millionths place, we dont need
  to include all the zeros

  HC = Hovercraft
 */
#define HC_PRODUCED_PER_MONTH  10
#define PRICE_PER_HC_BUILD      2
#define MONTHLY_INSURANCE_COST  1
#define PRICE_PER_HC            3

int main(int argc, char const *argv[]) {
  int nSales = 0;

  scanf("%d", &nSales);

  /*
    Calculate the profit

    If the sales exceed  the monthly costs (negative): profit
    If the sales subceed the monthly costs (positive): loss
    If the sales matched the monthly costs (zero):     broke even
   */
  int profit =
    (HC_PRODUCED_PER_MONTH * PRICE_PER_HC_BUILD + MONTHLY_INSURANCE_COST) -
    (nSales * PRICE_PER_HC);

  if (profit < 0)      puts("Profit");
  else if (profit > 0) puts("Loss");
  else                 puts("Broke Even");

  return 0;
}
