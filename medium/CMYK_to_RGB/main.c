#include <stdio.h>

/**
 * @fn round
 *
 * @brief Rounds a floating-point number up or down
 *
 * @param[in] n: number to round
 *
 * @returns The number rounded up or down
 */
int round(double n) {
  return (int)(n < 0 ? n - 0.5 : n + 0.5);
}

int main(int argc, char const *argv[]) {
  double c = 0.0f;
  double m = 0.0f;
  double y = 0.0f;
  double k = 0.0f;

  scanf("%lf%lf%lf%lf", &c, &m, &y, &k);

  // Convert CMYK to RGB
  fprintf(stdout, "%d,%d,%d",
    round(255.0f * (1 - c) * (1 - k)),
    round(255.0f * (1 - m) * (1 - k)),
    round(255.0f * (1 - y) * (1 - k))
  );
  return 0;
}
