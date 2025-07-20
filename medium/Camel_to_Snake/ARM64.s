/*
  Compiled and ran on Qualcomm Snapdragon 865
 */
  .global _start

_start:
  // Get input
  mov w0, #0
  ldr x1, =buf_in
  mov w2, #255
  mov w8, #63
  svc 0

  ldr x2, =buf_out // Dedicated to output buffer
  mov w5, #'_'     // Save commonly used character

  // Ensure first letter is lowercase
  ldrb w0, [x1]
  orr  w0, w0, #0x20
  strb w0, [x1]

while:
  ldrb w0, [x1], #1
  // Check for end of string
  cmp w0, #'\n'
  b.eq printResult
  cmp w0, #0
  b.eq printResult

  // Is character capital ?
  cmp w0, #'A'
  b.ge capital

// Add character to output buffer
addChar:
  strb w0, [x2], #1

  b while
  
capital:
  // Is it within A - Z inclusive ?
  cmp w0, #'Z'
  b.gt addChar // No: add to output buffer

  // Yes: add _ and lowercased character to output buffer
  strb w5, [x2], #1
  orr  w0, w0, #0x20
  strb w0, [x2], #1
  
  b while

printResult:
  // Get string length
  ldr x1, =buf_out
  sub x2, x2, x1

  mov w0, #1
  ldr x1, =buf_out
  mov x8, #64
  svc 0

exit:
  mov w0, #0
  mov w8, #93
  svc 0

.data
buf_in:  .fill 255, 1, 0
buf_out: .fill 255, 1, 0

