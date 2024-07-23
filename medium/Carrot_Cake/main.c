#include <stdio.h>

#define CARROTS_PER_CAKE 7

int main(int argc, char const *argv[]) {
  int nCarrots = 0;
  int nBoxes   = 0;

  scanf("%d%d", &nCarrots, &nBoxes);

  /*
    Evenly distribute carrots into boxes
      nCarrots % nBoxes

    If we have 7+ left over, we can make a cake
      If (7 - left over <= 0) we have at least 7
      otherwise we have less than 7
   */
  int leftOver = CARROTS_PER_CAKE - nCarrots % nBoxes;

  if (leftOver <= 0) puts("Cake Time");
  else fprintf(stdout, "I need to buy %d more", leftOver);
  return 0;
}
