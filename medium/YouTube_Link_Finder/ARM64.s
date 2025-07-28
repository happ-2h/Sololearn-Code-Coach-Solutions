/*
  Compiled and ran on Qualcomm Snapdragon 865
 */
  .global _start

_start:
  // Get URL
  mov w0, #0
  ldr x1, =url
  mov w2, #255
  mov w8, #63
  svc 0

  // Point to the end of the string
  add x1, x1, x0
while:
  ldrb w0, [x1], #-1

  // If reached '=' or '/', print result
  cmp  w0, #'='
  b.eq print
  cmp  w0, #'/'
  b.eq print

  b while

print:
  add x1, x1, #2 // Compensate for writeback

  mov w0, #1
  mov w2, #11
  mov w8, #64
  svc 0

exit:
  mov w0, #0
  mov w8, #93
  svc 0

.data
url: .fill 255, 1, 0
