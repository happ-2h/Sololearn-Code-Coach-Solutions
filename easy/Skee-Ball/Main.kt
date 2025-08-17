fun main() {
  val pts  = readln().toInt()
  val cost = readln().toInt()

  println(
    if (pts / 12 >= cost) "Buy it!"
    else "Try again"
  )
}