#include <stdio.h>

int main(int argc, char const *argv[]) {
  int pesos   = 0;
  int dollars = 0;

  scanf("%d%d", &pesos, &dollars);

  /*
    Convert pesos to dollars
      P * 0.02 = D
    or
      P = D / 0.02 => D * (1 / 0.02) => D * 50

    Check which one is lower
      P * 0.02 < D ? P : D
    Or
      P < D * 50 ? P : D
   */
  fprintf(stdout, "%s",
    pesos < dollars * 50 ?
      "Pesos" :
      "Dollars"
  );

  return 0;
}
