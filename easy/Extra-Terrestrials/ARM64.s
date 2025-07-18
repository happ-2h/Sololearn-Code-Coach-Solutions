/*
  Compiled and ran on Qualcomm Snapdragon 865
 */
  .global _start

_start:
  // Read from stdin
  mov w0, #0
  ldr x1, =buffer
  mov w2, #46
  mov w8, #63
  svc 0

  // Save return value
  mov w5, w0

  // Save buffer address for traversing
  ldr x4, =buffer

  mov w0, #1  // stdout
  mov w2, #1  // strlen
  mov w8, #64 // write syscall

// While x5 >= 0
while:
  subs x5, x5, #1
  b.lt exit

  // Traverse the buffer
  add x1, x4, x5
  // Print character
  svc 0 

  b while

exit:
  mov w0, #0
  mov w8, #93
  svc 0

.data
buffer: .fill 46, 1, 0
