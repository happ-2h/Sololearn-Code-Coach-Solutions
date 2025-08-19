fun main() {
  val names = readln()
  val name  = readln()

  println(
    if (names.matches(".*${name[0]}.*".toRegex()))
      "Compare notes"
    else
      "No such luck"
  )
}