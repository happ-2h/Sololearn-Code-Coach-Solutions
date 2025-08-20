import kotlin.system.exitProcess

fun main() {
  for (i in 1..4) {
    val sign = readln()
    if (sign == sign.reversed()) {
      println("Open")
      exitProcess(0)
    }
  }

  println("Trash")
}