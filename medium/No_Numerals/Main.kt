fun main() {
  val nums = mapOf(
     "0" to "zero",
     "1" to "one",
     "2" to "two",
     "3" to "three",
     "4" to "four",
     "5" to "five",
     "6" to "six",
     "7" to "seven",
     "8" to "eight",
     "9" to "nine",
    "10" to "ten"
  )

  readln().split(' ').forEach {
    print("${if (nums.containsKey(it)) nums[it] else it} ")
  }
}