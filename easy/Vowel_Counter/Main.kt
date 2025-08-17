fun main() {
  var nVowels = 0

  readln().forEach {
    nVowels += when(it.lowercaseChar()) {
      'a',
      'e',
      'i',
      'o',
      'u'  -> 1
      else -> 0
    }
  }

  println(nVowels)
}