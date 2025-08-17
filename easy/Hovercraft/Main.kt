fun main() {
  val nSales = readln().toInt()

  println(
    when {
      nSales == 7 -> "Broke Even"
      nSales <  7 -> "Loss"
      else        -> "Profit"
    }
  )
}
