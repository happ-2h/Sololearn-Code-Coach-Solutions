/*
  Compiled and ran on Qualcomm Snapdragon 865
 */
  .global _start

_start:
  // Get input
  mov w0, #0
  ldr x1, =text
  mov w2, #255
  mov w8, #63
  svc 0

  ldr x2, =temp
for:
  ldrb w0, [x1], #1
  strb w0, [x2]     // Save character into temp

  // Check if reached end of string
  cmp  w0, #'\0'
  b.eq exit
  cmp  w0, #'\n'
  b.eq exit

  ldrb w5, [x1], #1 // Load the number

  // Save text and temp addresses
  stp x1, x2, [sp, #-16]!

doWhile:
  // Print character
  mov w0, #0
  ldr x1, =temp
  mov w2, #1
  mov w8, #64
  svc 0

  sub w5, w5, #1
  // Has the number reached '0' ?
  cmp  w5, #'0'
  b.eq cleanup // Yes: cleanup
  b doWhile    // No: keep on printing

cleanup:
  // Restore text and temp addresses
  ldp x1, x2, [sp], #16
  b for

exit:
  mov w0, #0
  mov w8, #93
  svc 0

.data
text: .fill 255, 1, 0
temp: .byte 0
.align 4
