fun main() {
  var snackPts = 0

  readln()
    .split(' ')
    .forEach {
      snackPts += when(it) {
        "Lettuce" -> 5
        "Carrot"  -> 4
        "Mango"   -> 9
        else      -> 0
      }
    }

  println(if (snackPts >= 10) "Come on Down!" else "Time to wait")
}