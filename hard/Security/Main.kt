fun main() {
  println(
    if (readln().matches(".*[\$T].*G.*[\$T].*".toRegex()))
      "quiet"
    else
      "ALARM"
  )
}