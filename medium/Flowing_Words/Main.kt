fun main() {
  var words   = readln().split(' ')
  var flowing = true

  for (i in 0..<words.size-1) {
    if (words[i].last() != words[i+1].first()) {
      flowing = false
      break
    }
  }

  println(flowing)
}