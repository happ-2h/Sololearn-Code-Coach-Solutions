fun main() {
  var leftOver = 0

  for (x in 1..4) leftOver += readln().toInt() % 15

  println(leftOver)
}