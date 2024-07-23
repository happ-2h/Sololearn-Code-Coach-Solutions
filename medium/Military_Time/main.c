#include <stdio.h>

int main(int argc, char const *argv[]) {
  int hr   = 0;
  int min  = 0;
  char mer = ' '; // Meridiem

  scanf("%d:%d %cM", &hr, &min, &mer);

  if (mer == 'P')    hr += 12; // PM? Add 12 to the hour
  else if (hr == 12) hr = 0;   // 12 AM ? change hour to 0

  fprintf(stdout, "%02d:%02d", hr, min);

  return 0;
}
