#include <stdio.h>

int main(int argc, char const *argv[]) {
  int n   = 0; // Length of the list
  int sum = 0; // Sum of even numbers

  scanf("%d", &n);

  for (size_t i = n; i-- > 0;) {
    scanf("%d", &n);
    sum += n&1 ? 0 : n;
  }

  fprintf(stdout, "%d", sum);

  return 0;
}
