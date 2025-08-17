import kotlin.math.roundToInt

fun main() {
  val nColors = readln().toInt()

  println(
    ((5.0 * nColors + 40.00) * 1.10).roundToInt()
  )
}