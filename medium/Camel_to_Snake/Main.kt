fun main() {
  println(
    readln()
      .replace("[A-Z]".toRegex(), "_$0")
      .lowercase()
  )
}