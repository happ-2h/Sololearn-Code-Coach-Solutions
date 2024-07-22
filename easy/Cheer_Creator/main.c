#include <stdio.h>

int main(int argc, char const *argv[]) {
  int yards = 0;

  scanf("%d", &yards);

  // Print cheer depending on yards gained
  if (yards > 10)     puts("High Five");
  else if (yards < 1) puts("shh");
  else while(yards--) puts("Ra!");

  return 0;
}
