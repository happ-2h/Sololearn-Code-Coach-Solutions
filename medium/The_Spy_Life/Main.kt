fun main() {
  println(
    readln()
      .reversed()
      .replace("[^a-zA-Z ]".toRegex(), "")
  )
}