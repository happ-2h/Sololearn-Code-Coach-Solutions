fun main() {
  val ttlEggs      = readln().toInt()
  val nMyEggs      = readln().toInt()
  val nFriendsEggs = readln().toInt()

  println(
    if (nMyEggs + nFriendsEggs < ttlEggs) "Keep Hunting"
    else "Candy Time"
  )
}