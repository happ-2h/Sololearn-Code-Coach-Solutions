#include <math.h>
#include <stdio.h>

int main(int argc, char const *argv[]) {
  int nHouses = 0;

  scanf("%d", &nHouses);

  /*
    Only 2 houses give dollar bills
      2 / nHouses

    Convert the percentage to decimal
      (2 / nHouses) * 100 => 200 / nHouses
   */
  fprintf(stdin, "%d", (int)ceil(200.0f / nHouses));

  return 0;
}
