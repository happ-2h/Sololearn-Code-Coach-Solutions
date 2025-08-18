import kotlin.system.exitProcess

fun main() {
  val test = readln().toInt()

  readln().split(" ").forEach {
    if (test % it.toInt() == 1) {
      println("not divisible by all")
      exitProcess(1)
    }
  }

  println("divisible by all")
}