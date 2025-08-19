fun main() {
  val word = readln()
  val n    = readln().toInt()

  word.forEachIndexed { i, c ->
    if (i != 0 && i % n == 0) print("-")
    print(c)
  }
}