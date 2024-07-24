#include <stdio.h>

int main(int argc, char const *argv[]) {
  int n = 0;

  scanf("%d", &n);
  //                                    calculate sum
  for (int nTemp = 0, sum = 0; n-- > 0; sum += nTemp) {
    scanf("%d", &nTemp);

    // If the current number is less than the sum
    if (nTemp <= sum) {
      puts("false"); // Not a snowballing number
      return 1;
    }
  }

  puts("true");

  return 0;
}
