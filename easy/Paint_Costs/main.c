#include <math.h>
#include <stdio.h>

#define BRUSH_PRICE 40.00f
#define PAINT_PRICE  5.00f
#define TAX_RATE     1.10f

int main(int argc, char const *argv[]) {
  int nColors = 0;

  scanf("%d", &nColors);

  // Output total cost
  fprintf(stdout, "%d",
    (int)round((PAINT_PRICE * nColors + BRUSH_PRICE) * TAX_RATE)
  );

  return 0;
}
