fun main() {
  val name    = readln()
  val nAgents = readln().toInt()
  val names   = readln().split(' ').toMutableList()

  names.add(name)
  names.sort()

  println(
    20 * (1 + names.indexOf(name) / nAgents)
  )
}
