import kotlin.math.ceil

fun main() {
  val width  = readln().toInt()
  val height = readln().toInt()

  println(ceil(width * height / 5.0).toInt())
}