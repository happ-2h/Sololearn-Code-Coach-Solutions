#include <stdio.h>

/**
 * @fn sum
 *
 * @brief Calculates the sum of natural numbers
 *        from 1 to n
 *
 * @param[in] n: Last number of the summation
 *
 * @returns   Calculated summation n(n + 1) / 2
 */
unsigned int sum(unsigned int n) {
  return (n * n + n) >> 1;
}

int main(int argc, char const *argv[]) {
  unsigned int n = 0;

  scanf("%u", &n);
  --n; // Need the sum less than n (not including n)

  /*
    Get the sum of all multiples of 3
      3 + 6 + 9 + ... + n
      is the same as
      3 * (3/3 + 6/3 + 9/3 + ... + n/3)

    Above is the same for multiples of 5

    Since there are duplicates for every 3 * 5,
    we remove the duplicates of 3 * 5
      (3 * 5) * SUM(n / (3 * 5))
   */
  fprintf(stdout, "%u",
    ( 3 * sum((int)(n /  3))) +
    ( 5 * sum((int)(n /  5))) -
    (15 * sum((int)(n / 15)))
  );

  return 0;
}
