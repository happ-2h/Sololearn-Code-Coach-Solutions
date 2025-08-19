fun main() {
  var n = readln().toInt()

  for (i in 1..n) {
    readln().split(' ').forEach { print(it[0]) }
    print(' ')
  }
}