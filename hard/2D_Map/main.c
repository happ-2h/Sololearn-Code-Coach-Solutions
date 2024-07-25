#include <stdio.h>
#include <string.h>

#define STRLEN_MAX 0xFF

/**
 * @fn abs
 *
 * @brief Takes the absolute value of a number
 *
 * @param[in] n: Number to get the absolute value of
 *
 * @returns      Absolute value of n
*/
int abs(int n) {
  return n < 0 ? n * -1 : n;
}

int main(int argc, char const *argv[]) {
  char space[STRLEN_MAX];

  int x = 0;
  int y = 0;
  int pn = 0; // 'P' number
  int coords[] = { 0, 0, 0, 0 };

  // Save the coordinates of each 'P'
  for (
    char* pch = fgets(space, STRLEN_MAX, stdin);
    *pch; ++pch
  ) {
    if (*pch == 'P') {
      if (pn == 0) {
        coords[pn] = x;
        coords[++pn] = y;
        ++x;
      }
      else {
        coords[pn] = x;
        coords[pn+1] = y;
        ++x;
        break;
      }
    }
    else if (*pch == ',') {
      ++y;
      x = 0;
    }
    else ++x;
  }

  fprintf(stdout, "%d",
    (abs(coords[0] - coords[2])) +
    (abs(coords[1] - coords[3]))
  );

  return 0;
}
