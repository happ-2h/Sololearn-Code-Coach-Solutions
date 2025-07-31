/*
  Compiled and ran on Qualcomm Snapdragon 865

  Result stored in x0
 */
  .global _start

_start:
  // Get input
  mov w0, #0
  ldr x1, =input
  mov w2, #255
  mov w8, #63
  svc 0

  mov w2, #0 // Default is 0 blocks
while:
  ldrb w0, [x1], #1
  // Check if reached end of string
  cmp  w0, #0
  b.eq exit
  cmp  w0, #'\n'
  b.eq exit

  // Check if reached Pool or House
  cmp  w0, #'P'
  b.eq startCount
  cmp  w0, #'H'
  b.eq startCount

  b while

startCount:
  mov w2, #0 // Counter
countBlocks:
  ldrb w0, [x1], #1
  // Check if reached end of string
  cmp  w0, #0
  b.eq exit
  cmp  w0, #'\n'
  b.eq exit

  // Check if reached Pool or House
  cmp  w0, #'P'
  b.eq exit
  cmp  w0, #'H'
  b.eq exit

  // Otherwise, must be a Block
  add w2, w2, #1

  b countBlocks

exit:
  // Save reusult in w0
  mov w0, w2

  mov w0, #0
  mov w8, #93
  svc 0

.data
input: .fill 255, 1, 0
