#include <stdio.h>
#include <string.h>

#define STRLEN_MAX 0xFF
#define N_SIGNS       4

/**
 * @fn checkPal
 *
 * @brief Checks if a string is a palindrome
 *
 * @param[in] str: String to check
 * @param[in] n:   Length of the string
 *
 * @returns   0 if not a palindrome;
 *            1 otherwise
*/
int checkPal(const char* str, size_t n) {
  if (n <= 1) return 0;

  // Pointers to each side of the string
  size_t lptr = 0;
  size_t rptr = n - 2;

  // If a different character was found, not a palindrome
  while(lptr <= rptr) {
    if (str[lptr] != str[rptr]) return 0;
    ++lptr;
    --rptr;
  }

  return 1;
}

int main(int argc, char const *argv[]) {
  char phrases[N_SIGNS][STRLEN_MAX];

  fgets(phrases[0], STRLEN_MAX, stdin);
  fgets(phrases[1], STRLEN_MAX, stdin);
  fgets(phrases[2], STRLEN_MAX, stdin);
  fgets(phrases[3], STRLEN_MAX, stdin);

  for (size_t i = 0; i < N_SIGNS; ++i) {
    if (checkPal(phrases[i], strlen(phrases[i]))) {
      puts("Open");
      return 0;
    }
  }

  puts("Trash");

  return 1;
}
