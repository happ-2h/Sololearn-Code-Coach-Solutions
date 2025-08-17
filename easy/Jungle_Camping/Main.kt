fun main() {
  readln()
    .split(' ')
    .forEach {
      when(it) {
        "Grr"   -> print("Lion ")
        "Rawr"  -> print("Tiger ")
        "Ssss"  -> print("Snake ")
        "Chirp" -> print("Bird ")
      }
    }
}