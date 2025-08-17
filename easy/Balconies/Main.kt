fun main() {
  // Convert comma separated values to area
  val areaA = readln()
    .split(',')
    .map    { it.toInt() }
    .reduce { acc, e -> acc * e }
  val areaB = readln()
    .split(',')
    .map    { it.toInt() }
    .reduce { acc, e -> acc * e }

  println("Apartment ${if (areaA > areaB) 'A' else 'B'}")
}