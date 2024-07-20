#include <stdio.h>
#include <string.h>

#define N_ORDERS 4
#define STRLEN_MAX 0x10

int main(int argc, char const *argv[]) {
  char orders[N_ORDERS][STRLEN_MAX];
  double ttl = 0.0f;

  scanf("%s %s %s %s", orders[0], orders[1], orders[2], orders[3]);

  for (size_t i = 0; i < N_ORDERS; ++i) {
    // Calculate the total based on order
    if (
      strncmp(orders[i], "Nachos", STRLEN_MAX) == 0 ||
      strncmp(orders[i], "Pizza",  STRLEN_MAX) == 0
    ) ttl += 6.00f;
    else if (strncmp(orders[i], "Cheeseburger", STRLEN_MAX) == 0)
      ttl += 10.00f;
    else
      ttl += 5.00f;
  }

  fprintf(stdout, "%.2f", ttl * 1.07f);

  return 0;
}
