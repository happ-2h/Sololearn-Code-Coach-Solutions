#include <stdio.h>

#define DIST_APART 50.0f

int main(int argc, char const *argv[]) {
  double roadrunnerDist  = 0.0f;
  double roadrunnerSpeed = 0.0f;
  double coyoteSpeed     = 0.0f;

  scanf("%lf%lf%lf", &roadrunnerDist, &roadrunnerSpeed, &coyoteSpeed);

  /*
    We need to find time given speed and distance
      s = d/t => t = d / s
    And compare times to see who arrives first
   */
  fprintf(stdout, "%s",
    // Did roadrunner arrive first ?
    roadrunnerDist / roadrunnerSpeed < DIST_APART / coyoteSpeed ?
      "Meep Meep" : // Yes
      "Yum"         // No
  );

  return 0;
}
