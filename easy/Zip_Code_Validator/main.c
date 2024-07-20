#include <stdio.h>
#include <string.h>

#define STRLEN_MAX 0xFF

/**
 * @fn isOnlyNums
 *
 * @brief Checks if a string is only numbers
 *
 * @param[in] str: String to check
 * @param[in] n:   length of the string
 *
 * @returns   0 if the string contains a non-number;
 *            1 if the string is all numbers
 */
int isOnlyNums(const char* str, size_t n) {
  for (size_t i = 0; i < n; ++i)
    if (str[i] < '0' || str[i] > '9') return 0;

  return 1;
}

/**
 * @fn hasSpaces
 *
 * @brief Checks if a string has spaces
 *
 * @param[in] str: String to check
 * @param[in] n:   length of the string
 *
 * @returns   0 if the string contains a space;
 *            1 if the string has no spaces
 */
int hasSpaces(const char* str, size_t n) {
  for (size_t i = 0; i < n; ++i)
    if (str[i] == ' ') return 1;

  return 0;
}


int main(int argc, char const *argv[]) {
  char zipCode[STRLEN_MAX];

  fgets(zipCode, STRLEN_MAX, stdin);

  // Replace newline with null terminator
  char* pch = strrchr(zipCode, '\n');
  if (pch) *pch = '\0';

  int zcLen = strlen(zipCode);

  /*
    Test if a zipcode is valid based on
    the given qualifications
    - Only has numbers
    - Length is 5
    - Contains no spaces

    Putting the length check first can
    prevent function call overhead in
    some cases
   */
  int isValid =
    (zcLen == 5)               &&
    isOnlyNums(zipCode, zcLen) &&
    !hasSpaces(zipCode, zcLen);

  fprintf(stdout, "%s", isValid ? "true" : "false");

  return 0;
}
