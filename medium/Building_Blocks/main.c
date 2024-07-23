#include <stdio.h>

#define N_BLOCKS    4
#define N_STUDENTS 15

int main(int argc, char const *argv[]) {
  int blocks[N_BLOCKS];
  int leftOver = 0;

  scanf("%d%d%d%d", &blocks[0], &blocks[1], &blocks[2], &blocks[3]);

  /*
    Count up what remained after dividing
    up blocks with students
   */
  for (size_t i = 0; i < N_BLOCKS; ++i)
    leftOver += blocks[i]%N_STUDENTS;

  fprintf(stdout, "%d", leftOver);

  return 0;
}
