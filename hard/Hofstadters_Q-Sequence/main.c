#include <stdio.h>

int main(int argc, char const *argv[]) {
  int n = 0;

  scanf("%d", &n);

  int Q[n];

  // Default values
  Q[0] = 1; // Q(1)
  Q[1] = 1; // Q(2)

  // Start at Q(3) onwards and calculate given sequence
  for (int i = 2; i < n; ++i)
    Q[i] = Q[i - Q[i - 1]] + Q[i - Q[i - 2]];

  fprintf(stdout, "%d", Q[n - 1]);

  return 0;
}
