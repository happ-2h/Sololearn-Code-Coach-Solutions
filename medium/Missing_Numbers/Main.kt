fun main() {
  val nums = mutableListOf<Int>()

  for (i in 0..<readln().toInt()) nums.add(readln().toInt())

  ((nums[0]..nums.last())
    .toMutableSet() subtract nums.toSet())
    .forEach { print("$it ") }
}