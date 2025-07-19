/*
  Compiled and ran on Qualcomm Snapdragon 865

  Result stored in x0
 */
  .global _start

_start:
  // Get input
  mov w0, #0
  ldr x1, =sentence
  mov w2, #255
  mov w8, #63
  svc 0

  mov w0, #0 // Number of vowels

while:
  // Did we reach the end of the input string ?
  ldrb w2, [x1], #1
  cmp w2, #0x0A
  b.eq exit

  orr w2, w2, #0x20 // To lowercase

  // Compare current character to vowels
  cmp w2, #'a'
  b.eq isVowel
  cmp w2, #'e'
  b.eq isVowel
  cmp w2, #'i'
  b.eq isVowel
  cmp w2, #'o'
  b.eq isVowel
  cmp w2, #'u'
  b.eq isVowel

  b while

// Is a vowel ? increase counter
isVowel:
  add x0, x0, #1
  b while

exit:
  mov w0, #0
  mov w8, #93
  svc 0

.data
sentence: .fill 255, 1, 0
