import kotlin.system.exitProcess

fun main() {
  val n = readln().toInt()
  var sum = 0

  for (i in 1..n) {
    val num = readln().toInt()

    if (num <= sum) {
      println("false")
      exitProcess(1)
    }

    sum += num
  }

  println("true")
}