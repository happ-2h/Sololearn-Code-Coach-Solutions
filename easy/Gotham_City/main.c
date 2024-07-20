#include <stdio.h>

int main(int argc, char const *argv[]) {
  int nCriminals = 0;

  scanf("%d", &nCriminals);

  // Decide what to do based on the number of criminals
  if (nCriminals < 5)       puts("I got this!");
  else if (nCriminals < 11) puts("Help me Batman");
  else                      puts("Good Luck out there!");

  return 0;
}
