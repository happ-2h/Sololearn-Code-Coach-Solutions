import kotlin.math.abs

fun main() {
  val space = readln().replace(",", "")
  val p1 = space.indexOf('P')
  val p2 = space.indexOf('P', p1 + 1)

  println(
    abs(p2/5 - p1/5) + abs(p2%5 - p1%5)
  )
}