/*
  Compiled and ran on Qualcomm Snapdragon 865
 */
  .global _start

_start:
  // Get sentence
  mov w0, #0
  ldr x1, =sentence
  mov w2, #255
  mov w8, #63
  svc 0

  ldr x0, =sentence
for:
  ldrb w1, [x0], #1
  // If reached end of string, sentence is flowing
  cmp w1, #0
  b.eq true
  cmp w1, #'\n'
  b.eq true

  // Check for space character
  cmp w1, #' '
  b.ne for

  // Compare current character with one before the space
  ldrb w1, [x0]
  ldrb w2, [x0, #-2]

  // If not the same, the sentence is not flowing
  cmp w1, w2
  b.ne false

  b for

// Print false
false:
  mov w0, #1
  ldr x1, =str_false
  mov w2, #5
  mov w8, #64
  svc 0

  b exit

// Print true
true:
  mov w0, #1
  ldr x1, =str_true
  mov w2, #4
  mov w8, #64
  svc 0

exit:
  mov w0, #0
  mov w8, #93
  svc 0

.data
sentence:  .fill 255, 1, 0
str_true:  .asciz "true"
str_false: .asciz "false"
