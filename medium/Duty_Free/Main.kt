import kotlin.system.exitProcess

fun main() {
  readln().split(" ").forEach {
    if (it.toDouble() * 1.1 > 20.0) {
      println("Back to the store")
      exitProcess(1)
    }
  }

  println("On the terminal")
}