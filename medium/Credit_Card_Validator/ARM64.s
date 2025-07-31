/*
  Compiled and ran on Qualcomm Snapdragon 865
 */
  .global _start

_start:
  // Get CCN
  mov w0, #0
  ldr x1, =ccn
  mov w2, #32
  mov w8, #63
  svc 0

  // CCN must be 16 characters
  sub  w0, w0, #1 // Remove newline from length
  cmp  x0, #16
  b.ne not_valid

  // Convert characters to integers
  ldr x0, =ccn
  ldr x1, =nums
  mov w5, #16
convert:
  ldrb w2, [x0], #1
  sub  w3, w2, #'0'
  // Character is not '0' - '9'
  cmp  w3, #10
  b.ge not_valid

  // Save number
  str w3, [x1], #4

  subs w5, w5, #1
  b.ne convert

  // Multiply every second digit by 2
  ldr x0, =nums
  mov w1, #16   // Start from back
mul_by_2:
  subs w1, w1, #2
  b.mi add_all

  ldr  w2, [x0, x1, lsl #2]
  lsl  w2, w2, #1

  // If number > 9, wrap number
  subs w5, w2, #9
  csel w2, w5, w2, pl

  str  w2, [x0, x1, lsl #2]

  b mul_by_2

add_all:
  ldr x0, =nums
  mov w1, #0
  mov w5, #0
add_for:
  ldr w2, [x0, x1, lsl #2]
  add w5, w5, w2

  add  w1, w1, #1
  cmp  w1, #16
  b.ne add_for

mod_10:
  mov  w0, #10
  sdiv w1, w5, w0
  mul  w1, w1, w0
  subs w0, w5, w1
  b.eq valid

// Print "not"
not_valid:
  mov w0, #1
  ldr x1, =str_not
  mov w2, #4
  mov w8, #64
  svc 0

// Print "valid"
valid:
  mov w0, #0
  ldr x1, =str_valid
  mov w2, #5
  mov w8, #64
  svc 0

exit:
  mov w0, #0
  mov w8, #93
  svc 0

.data
ccn:       .fill 32, 1, 0
nums:      .fill 16, 4, 0
str_not:   .asciz "not "
str_valid: .asciz "valid"
