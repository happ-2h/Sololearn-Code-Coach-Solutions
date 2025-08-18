fun main() {
  val nCarrots = readln().toInt()
  val nBoxes   = readln().toInt()
  val leftOver = 7 - nCarrots % nBoxes

  println(
    if (leftOver <= 0) "Cake Time"
    else "I need to buy $leftOver more"
  )
}