#include <stdio.h>
#include <stdlib.h>

int main(int argc, char const *argv[]) {
  int n = 0;
  int* nums = NULL;

  scanf("%d", &n);

  nums = malloc(n * sizeof(int));

  int i = 0;
  // Save input to compare later
  for (; i < n; ++i) scanf("%d", &nums[i]);

  /*
    From the first number to the last in the list,
    If the number exists in the list, skip it
    Otherwise, print it
   */
  int last = nums[i - 1]; // Save last number for loop termination
  i = 0;
  for (int currNum = nums[i]; currNum < last; ++currNum) {
    if (nums[i] == currNum) ++i;
    else fprintf(stdout, "%d ", currNum);
  }

  free(nums);
  nums = NULL;

  return 0;
}
