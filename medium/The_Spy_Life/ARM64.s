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

  subs w0, w0, #1 // strlen - 1

  ldr x1, =message
for:
  ldrb w2, [x1, x0]

  orr w2, w2, #0x20 // toLower

  // Check if character is a space or letter
  cmp  w2, #' '
  b.eq print
  cmp  w2, #'a'
  b.lt skip
  cmp  w2, #'z'
  b.gt skip

print:
  // Passed all tests, therefore print
  // Save counter and message base address
  stp x0, x1, [sp, #-16]!

  add x1, x1, x0 // Move pointer to current character
  mov w0, #1
  mov w2, #1
  mov w8, #64
  svc 0

  // Restore counter and message base address
  ldp x0, x1, [sp], #16

skip:
  subs w0, w0, #1
  b.pl for

exit:
  mov w0, #0
  mov w8, #93
  svc 0

.data
message: .fill 255, 1, 0
