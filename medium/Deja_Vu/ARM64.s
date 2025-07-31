/*
  Compiled and ran on Qualcomm Snapdragon 865
 */
  .global _start

_start:
  // Get input
  mov w0, #0
  ldr x1, =letters
  mov w2, #255
  mov w8, #63
  svc 0

  ldr x5, =letter_map
for:
  ldrb w0, [x1], #1
  // If reached end of string, then no duplicates found
  cmp  w0, #0
  b.eq unique
  cmp  w0, #'\n'
  b.eq unique

  // Convert letter to corresponding bit index
  sub w0, w0, #'a'
  mov w3, #1
  lsl w2, w3, w0

  // Test if bit is set in bitmap
  ldr  w6, [x5]
  tst  w6, w2
  b.ne deja_vu // If set, string is not unique

  // Save bit with other set bits
  orr w6, w6, w2
  str w6, [x5]

  b for

// String is not unique
deja_vu:
  mov w0, #1
  ldr x1, =str_deja_vu
  mov w2, #7
  mov w8, #64
  svc 0

  b exit

// String is unique
unique:
  mov w0, #1
  ldr x1, =str_unique
  mov w2, #6
  mov w8, #64
  svc 0

exit:
  mov w0, #0
  mov w8, #93
  svc 0

.data
letters:     .fill 255, 1, 0
letter_map:  .word 0
str_deja_vu: .asciz "Deja Vu"
str_unique:  .asciz "Unique"
