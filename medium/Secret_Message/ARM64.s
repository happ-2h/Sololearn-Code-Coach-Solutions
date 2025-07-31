/*
  Compiled and ran on Qualcomm Snapdragon 865
 */
  .global _start

_start:
  // Get message
  mov w0, #0
  ldr x1, =message
  mov w2, #255
  mov w8, #63
  svc 0

  // Constants
  mov w5, #'z'

while:
  ldrb w0, [x1], #1

  // Check if reached end of string
  cmp  w0, #0
  b.eq exit
  cmp  w0, #'\n'
  b.eq exit

  // Print spaces
  cmp  w0, #' '
  b.eq print

  orr w0, w0, #0x20 // toLower
  sub w0, w0, #'a'  // Find offset from 'a'
  sub w0, w5, w0    // Traverse backwards from 'z'

print:
  sub  x1, x1, #1   // Use unused character for printing
  strb w0, [x1]     // Save for printing

  mov w0, #1
  mov w2, #1
  mov w8, #64
  svc 0

  add x1, x1, #1     // Restore address

  b while

exit:
  mov w0, #0
  mov w8, #93
  svc 0

.data
message: .fill 255, 1, 0
