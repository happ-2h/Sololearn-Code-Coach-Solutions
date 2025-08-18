fun main() {
  var ttl = 0
  val ccn = readln()

  ccn.reversed().forEachIndexed { index, ch ->
    var n = ch.digitToInt()

    if (index and 1 == 1) n *= 2
    if (n > 9) n -= 9

    ttl += n
  }

  println(if (ccn.length == 16 && ttl % 10 == 0) "valid" else "not valid")
}