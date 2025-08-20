fun main() {
  val Q = MutableList<Int>(readln().toInt()) { 0 }
  Q[0] = 1
  Q[1] = 1

  for (i in 2..<Q.size)
    Q[i] = Q[i - Q[i - 1]] + Q[i - Q[i - 2]]

  println(Q[Q.size - 1])
}