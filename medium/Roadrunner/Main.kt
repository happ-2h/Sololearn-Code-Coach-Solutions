fun main() {
  val roadrunnerDist  = readln().toDouble()
  val roadrunnerSpeed = readln().toDouble()
  val coyoteSpeed     = readln().toDouble()

  println(
    if (roadrunnerDist / roadrunnerSpeed < 50.0 / coyoteSpeed)
      "Meep Meep"
    else
      "Yum"
  )
}