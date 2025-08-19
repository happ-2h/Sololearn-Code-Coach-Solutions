fun main() {
  println(
    readln().replace("[^a-zA-Z0-9 ]".toRegex(), "")
  )
}