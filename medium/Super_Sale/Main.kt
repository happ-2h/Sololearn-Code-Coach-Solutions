fun main() {
  val nums = readln().split(',').map { it.toDouble() }

  println(
    ((nums.sum() - nums.max()) * 0.3 * 1.07).toInt()
  )
}