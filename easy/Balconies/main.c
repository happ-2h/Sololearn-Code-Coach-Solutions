#include <stdio.h>

int main(int argc, char const *argv[]) {
  int aw = 0;
  int ah = 0;
  int bw = 0;
  int bh = 0;

  scanf("%d,%d", &aw, &ah);
  scanf("%d,%d", &bw, &bh);

  /*
    Determine if apartment B has a
    larger balcony than apartment A
    based on their area
      AWidth * AHeight < BWidth * BHeight

    Returns 0 if false, true otherwise.
    We can use this to set the character
      'A' = ('A' + 0) or 'B' = ('A' + 1)
   */
  fprintf(stdout, "Apartment %c",
    'A' + (aw * ah < bw * bh)
  );

  return 0;
}
