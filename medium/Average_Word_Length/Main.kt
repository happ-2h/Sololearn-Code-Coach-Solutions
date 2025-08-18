import kotlin.math.ceil

fun main() {
  val words    = readln()
  val nWords   = words.split(" ").size
  val nLetters = words.replace("[^a-zA-Z]".toRegex(), "").length

  println(ceil(nLetters.toDouble() / nWords).toInt())
}