#include <stdio.h>

int main(int argc, char const *argv[]) {
  int nPplAhead = 0;

  scanf("%d", &nPplAhead);

  /*
    Each ship carries 20 people, find what group you're in
      Group = floor(peopleAhead / 20)
    Multiply 20 for each round trip per group
      totalTime = Group * 20
    Add 10 for your trip to the shore
      totalTime = totalTime + 10
   */
  fprintf(stdout, "%d", (nPplAhead / 20) * 20 + 10);

  return 0;
}
