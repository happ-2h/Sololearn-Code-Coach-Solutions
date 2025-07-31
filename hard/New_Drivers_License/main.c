#include <stdio.h>
#include <string.h>

#define STRLEN_MAX 0xFF
#define N_PEOPLE      4

int main(int argc, char const *argv[]) {
  char name[STRLEN_MAX];
  int nAgents = 0;
  char names[N_PEOPLE][STRLEN_MAX];

  scanf("%s%d", name, &nAgents);
  scanf("%s %s %s %s", names[0], names[1], names[2], names[3]);

  // Check position in line based on alphabetical ordering
  int pos = 0;
  for (size_t i = 0; i < 4; ++i)
    if (strncmp(name, names[i], STRLEN_MAX) > 0) ++pos;

  /*
    There are many agents seeing multiple people
    at a time, so we have to find out the group
    we are in
      groupNumber = ⌋positionInLine / numberOfAgents⌊

    It takes 20 minutes per group
      time = 20 * groupNumber

    And it takes 20 minutes to process our license
      totalTime = 20 + time
   */
  fprintf(stdout, "%d", 20 + 20 * (int)(pos / nAgents));

  return 0;
}
