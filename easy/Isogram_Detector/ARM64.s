/*
  Compiled and ran on Qualcomm Snapdragon 865
 */
  .global _start

_start:
  // Get user input
  mov w0, #0
  ldr x1, =word
  mov w2, #0xFF
  mov w8, #63
  svc 0

  ldr x2, =charCount
loop:
  ldrb w5, [x1], #1
  // Reached the end ? is an isogram
  cmp w5, 0x0A
  b.eq true

  // Ensure the letter is lowercase
  orr w5, w5, #0x20

  // Get letter number (0 - 25) for map indexing
  sub w5, w5, #'a'

  // Increase charCount
  ldr w0, [x2, x5, lsl #2]
  add x0, x0, #1

  // Result >= 2 ? not an isogram
  cmp x0, #2
  b.ge false

  // Save charCount + 1
  str w0, [x2, x5, lsl #2]
  b loop

// Not an isogram. Prepare "false"
false:
  ldr x1, =str_false
  mov w2, #5

  b print

// Is an isogram. Prepare "true"
true:
  ldr x1, =str_true
  mov w2, #4
  
// Print result
print:
  mov w0, #0
  mov w8, #64
  svc 0

exit:
  mov w0, #0
  mov w8, #93
  svc 0

.data
word:      .fill  46, 1, 0
.align 4
charCount: .fill  26, 4, 0
.align 4
str_true:  .asciz "true"
str_false: .asciz "false"
