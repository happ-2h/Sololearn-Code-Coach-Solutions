#include <stdio.h>

int main(int argc, char const *argv[]) {
  int nFriends = 0;

  scanf("%d", &nFriends);


  /*
    Buy 9 candles per friend and 9 for yourself
      9 * nFriends + 9
    or
      9 * (nFriends + 1)
   */
  fprintf(stdout, "%d",
    nFriends * 9 + 9
  );
  return 0;
}
