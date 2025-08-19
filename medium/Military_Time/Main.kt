fun main() {
  val time = readln()
  val mer  = time[time.length-2]
  val nums = "(\\d+):(\\d+)".toRegex().find(time)?.destructured

  var hr  = nums?.component1()?.toInt()
  var min = nums?.component2()?.toInt()

  if (mer == 'P')    hr = hr?.plus(12)
  else if (hr == 12) hr = 0

  println(String.format("%02d:%02d", hr, min))
}