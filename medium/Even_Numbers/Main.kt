fun main() {
  readln().split(" ").forEach {
    if (it.toInt() and 1 == 0) print("$it ")
  }
}