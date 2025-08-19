fun main() {
  val n   = readln().toInt()
  var ttl = 0

  for (i in 1..n) {
    val num = readln().toInt()
    if (num % 2 == 0) ttl += num
  }

  println(ttl)
}