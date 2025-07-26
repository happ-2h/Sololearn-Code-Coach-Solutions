/*
  Compiled and ran with Qualcomm Snapdragon 865
 */
  .global _start

_start:
  // Print '#'
  mov  w0, #1
  ldr  x1, =results
  mov  w2, #'#'
  strb w2, [x1]
  mov  w2, #1
  mov  w8, #64
  svc 0

  // Evaluate and print Red value
  ldr x0, =value_R
  ldr w0, [x0]
  bl printDecToHex

  // Evaluate and print Green value
  ldr x0, =value_G
  ldr w0, [x0]
  bl printDecToHex

  // Evaluate and print Blue value
  ldr x0, =value_B
  ldr w0, [x0]
  bl printDecToHex

exit:
  mov w0, #0
  mov w8, #93
  svc 0

/**
 * @brief Print a decimal value to hexadecimal
 *
 * @param[in] x0 - Integer to convert
 */
printDecToHex:
  stp x29, x30, [sp, #-16]!

  // Store characters backwards
  ldr x5, =results
  add x5, x5, #1
while:
  cmp w0, #0
  b.eq printResult

  and w1, w0, #15    // n % 16

  // If remainder < 10, save as '0' - '9'
  cmp w1, #10
  b.lt saveInt

  add w1, w1, #55    // Otherwise save as 'A' - 'F'

  b endif

saveInt:
  add w1, w1, #'0'   // Convert to '0' - '9'

endif:
  strb w1, [x5], #-1 // Save character
  lsr  w0, w0, #4    // n = n / 16

  b while

printResult:
  mov w0, #1
  ldr x1, =results
  mov w2, #2
  mov w8, #64
  svc 0

  mov x0, #0
  ldp x29, x30, [sp], #16
  ret

.data
value_R: .word 100
value_G: .word 200
value_B: .word 233
results: .byte 0, 0
