fun main() {
  var letters = readln()

  println(
    if (letters.length > letters.toSet().size) "Deja Vu"
    else "Unique"
  )
}