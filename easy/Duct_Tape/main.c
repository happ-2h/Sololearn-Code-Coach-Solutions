#include <math.h>
#include <stdio.h>

int main(int argc, char const *argv[]) {
  int width  = 0;
  int height = 0;

  scanf("%d%d", &width, &height);


  /*
    We need the total area of both sides of the door in feet
      width * height * 2

    We also need the total area of one roll of tape in feet
      60 * (2/12) => 60 * (1/6) = 10

    Finally, we use division to find how many rolls we need
    Take the ceiling to not buy less than what we need
      width * height * 2 / 10 => width * height / 5
   */
  fprintf(stdout, "%d",
    (int)ceil(width * height / 5.0f)
  );

  return 0;
}
