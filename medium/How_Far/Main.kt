fun main() {
  println(
    "B*[PH](B*)[HP]B*".toRegex()
      .find(readln())
      ?.destructured
      ?.component1()?.length
  )
}