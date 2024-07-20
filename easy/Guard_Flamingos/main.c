#include <stdio.h>

int main(int argc, char const *argv[]) {
  int length = 0;
  int width  = 0;

  scanf("%d%d", &length, &width);

  /*
    We need to find the perimeter of the yard in feet
      perimeter = 2 * (length + width)

    We have to place one flamingo every 2 feet
      2 * (length + width) / 2 => length + width
   */
  fprintf(stdout, "%d",
    length + width
  );

  return 0;
}
