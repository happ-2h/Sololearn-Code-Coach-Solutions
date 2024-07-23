#include <stdio.h>

int main(int argc, char const *argv[]) {
  int r = 0;
  int g = 0;
  int b = 0;

  scanf("%d%d%d", &r, &g, &b);

  // Print the hex representation of RGB
  fprintf(stdout, "#%02x%02x%02x", r, g, b);

  return 0;
}
