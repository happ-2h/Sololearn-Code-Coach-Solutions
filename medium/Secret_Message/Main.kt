import kotlin.math.abs

fun main() {
  readln().forEach {
    var c = it.lowercaseChar()
    if (c != ' ') c = abs(219 - c.code).toChar()
    print(c)
  }
}