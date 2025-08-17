fun main() {
  val zipCode = readln()

  println(
    zipCode.length == 5 &&
    zipCode.contains("^\\d+$".toRegex()) &&
    !zipCode.contains(' ')
  )
}