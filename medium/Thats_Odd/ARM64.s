/*
  Compiled and ran on Qualcomm Snapdragon 865
 */
  .global _start

_start:
  ldr x0, =list
  ldr x5, =list_end

  mov w4, #0
for:
  ldr w1, [x0], #4

  ands wzr, w1, #1      // n&1
  csel w1,  w1, wzr, eq // ? 0 : n

  // Accumulate sum
  add w4, w4, w1

  // Check if reached end of list
  subs xzr, x0, x5
  b.ne for

  // Save result in x0
  mov w0, w4

exit:
  mov w0, #0
  mov w8, #93
  svc 0

.data
list:     .word 1, 2, 3, 4, 5, 6, 7, 8, 9
list_end: .byte 0
.align 4
