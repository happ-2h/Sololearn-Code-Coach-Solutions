fun main() {
  for (i in 1..6 ) {
    val num = readln().toInt()

    when {
      num % 3 == 0 -> print("Pop ")
      num % 2 == 0 -> print("Crackle ")
      else         -> print("Snap ")
    }
  }
}