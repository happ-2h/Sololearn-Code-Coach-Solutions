fun main() {
  var total  = 0.0

  readln()
    .split(" ")
    .forEach {
      total += when(it) {
        "Nachos", "Pizza" ->  6.0
        "Cheeseburger"    -> 10.0
        "Water"           ->  4.0
        else              ->  5.0
      }
    }

  println(String.format("%.2f", total * 1.07))
}