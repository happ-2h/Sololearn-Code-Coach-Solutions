fun main() {
  val nSiblings  = readln().toInt()
  val nPopsicles = readln().toInt()

  println(
    if (nPopsicles % nSiblings == 1) "eat them yourself"
    else "give away"
  )
}