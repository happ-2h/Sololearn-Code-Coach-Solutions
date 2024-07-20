#include <stdio.h>

int main(int argc, char const *argv[]) {
  int pts  = 0;
  int cost = 0;

  scanf("%d %d", &pts, &cost);

  fprintf(stdout, "%s",
    pts / 12 >= cost ? // Did you get enough tickets ?
      "Buy it!" :      // Yes, buy it
      "Try again"      // No, keep on trying
  );

  return 0;
}
