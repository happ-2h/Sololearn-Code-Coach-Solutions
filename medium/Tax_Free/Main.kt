fun main() {
  println(
    String.format("%.2f",
      readln().split(',')
      .sumOf {
        val price = it.toDouble()
        if (price < 20) price * 1.07 else price
      })
  )
}