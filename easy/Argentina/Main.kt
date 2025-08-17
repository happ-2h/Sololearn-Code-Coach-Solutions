fun main() {
  val pesos   = readln().toInt()
  val dollars = readln().toInt()

  println(
    if (pesos < dollars * 50) "Pesos " else "Dollars"
  )
}
