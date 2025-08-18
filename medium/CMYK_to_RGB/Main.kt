import kotlin.math.round

fun main() {
  val c = readln().toDouble()
  val m = readln().toDouble()
  val y = readln().toDouble()
  val k = readln().toDouble()

  println(
    "${round(255.0 * (1 - c) * (1 - k)).toInt()}," +
    "${round(255.0 * (1 - m) * (1 - k)).toInt()}," +
    "${round(255.0 * (1 - y) * (1 - k)).toInt()}"
  )
}