#include <stdio.h>

int main(int argc, char const *argv[]) {
  int nOnes = 0;
  int n     = 0;

  scanf("%d", &n);

  /*
    Check if the first bit is set
      n & 1
     Add the result to the number-of-ones variable
       nOnes += n & 1

      Shift the bit right to check the next bit
        n>>=1

      Repeat until n is all zeros (e.g. 0)
   */
  while(n) {
    nOnes += n & 1;
    n>>=1;
  }

  fprintf(stdout, "%d", nOnes);

  return 0;
}
