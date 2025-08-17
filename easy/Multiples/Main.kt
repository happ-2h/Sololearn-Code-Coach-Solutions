fun main() {
  val n   = readln().toUInt() - 1u
  val sum = { n: UInt -> (n * n + n) shr 1 }

  println(
    ( 3u * sum(n /  3u)) +
    ( 5u * sum(n /  5u)) -
    (15u * sum(n / 15u))
  )
}
