#include <stdio.h>

#define NBOWLS 6

int main(int argc, char const *argv[]) {
  int bowls[NBOWLS];

  scanf("%d%d%d%d%d%d",
    &bowls[0],
    &bowls[1],
    &bowls[2],
    &bowls[3],
    &bowls[4],
    &bowls[5]
  );

  /*
    If the number of Rice Krispies is divisible by 3, print "Pop"
    Else if the number is odd, print "Snap"
    Else print Crackle
   */
  for (size_t i = 0; i < NBOWLS; ++i) {
    if (bowls[i] % 3 == 0) puts("Pop ");
    else if (bowls[i]&1)   puts("Snap ");
    else                   puts("Crackle ");
  }

  return 0;
}
