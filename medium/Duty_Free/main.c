#include <stdio.h>
#include <string.h>

int main(int argc, char const *argv[]) {
  double price;

  /*
    Convert the Euro price to USD
      price * 1.1

    If it's greater than 20, "Back to the store" and stop
    Else "On to the terminal"
   */
  while(scanf("%lf", &price) == 1) {
    if (price * 1.1f > 20.0f) {
      puts("Back to the store");
      return 1;
    }
  }

  puts("On to the terminal");

  return 0;
}
