fun main() {
  val nKaleido = readln().toInt()
  var ttl      = nKaleido * 5.0

  if (nKaleido > 1) ttl -= nKaleido * 0.5

  println(String.format("%.2f", ttl * 1.07))
}