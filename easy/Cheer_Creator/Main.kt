fun main() {
  var yards = readln().toInt()

  if         (yards > 10)    print("High Five")
  else if    (yards < 1)     print("shh")
  else while ((yards-- > 0)) print("Ra!")
}