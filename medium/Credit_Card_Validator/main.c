#include <stdio.h>
#include <string.h>

#define STRLEN_MAX 0xFF
#define NDIGITS      16

int main(int argc, char const *argv[]) {
  char ccn[STRLEN_MAX];

  fgets(ccn, STRLEN_MAX, stdin);

  // Replace newline with null terminator
  char* pch = strrchr(ccn, '\n');
  if (pch) *pch = '\0';

  size_t ccnLen = strlen(ccn);

  // Must have exactly 16 digits
  if(ccnLen != NDIGITS) {
    puts("not valid");
    return 1;
  }

  // Reverse the number
  for (size_t i = 0; i < ccnLen>>1; ++i) {
    char tmp = ccn[i];
    ccn[i] = ccn[ccnLen - 1 - i];
    ccn[ccnLen - 1 - i] = tmp;
  }

  // Convert string to integers
  int nums[ccnLen];
  for (size_t i = 0; i < ccnLen; ++i) nums[i] = ccn[i] - '0';

  for (size_t i = 1; i < ccnLen; i += 2) {
    nums[i]<<=1;                   // Multiply every second digit by 2
    if (nums[i] > 9) nums[i] -= 9; // Subtract 9 from numbers greater than 9
  }

  // Add all the digits together
  int ttl = 0;
  for (size_t i = 0; i < ccnLen; ++i) ttl += nums[i];

  // Modulo 10 of the total should be 0
  fprintf(stdout, "%svalid", ttl%10 ? "not " : "");

  return 0;
}
