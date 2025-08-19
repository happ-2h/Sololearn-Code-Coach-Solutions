fun main() {
  "\\D\\d".toRegex().findAll(readln()).forEach {
      print(
        it.value.substring(0, 1)
          .repeat(it.value[1].code - '0'.code)
      )
  }
}