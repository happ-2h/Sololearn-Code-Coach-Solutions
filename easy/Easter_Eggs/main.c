#include <stdio.h>

int main(int argc, char const *argv[]) {
  int ttlEggs     = 0;
  int nMyEggs     = 0;
  int nFriendsEggs = 0;

  scanf("%d%d%d", &ttlEggs, &nMyEggs, &nFriendsEggs);

  fprintf(stdout, "%s",
    nMyEggs + nFriendsEggs < ttlEggs ? // Is our total less than the overall total ?
      "Keep Hunting" :                 // Yes, keep hunting
      "Candy Time"                     // No, candy time!
  );

  return 0;
}
