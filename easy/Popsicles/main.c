#include <stdio.h>

int main(int argc, char const *argv[]) {
  int nSiblings  = 0;
  int nPopsicles = 0;

  scanf("%d%d", &nSiblings, &nPopsicles);

  fprintf(stdout, "%s",
    nPopsicles % nSiblings ? // Can we evenly distribute the popsicles ?
      "eat them yourself" :  // No, keep them
      "give away"            // Yes, share them
  );

  return 0;
}
