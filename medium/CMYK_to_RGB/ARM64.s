/*
  Compiled and ran on Qualcomm Snapdragon 865

  Results stored in .data
  R: value_R
  G: value_G
  B: value_B
 */
  .global _start

_start:
  sub fp, sp, #16
  sub sp, sp, #16

  // Common magic numbers
  fmov  d1, #1
  mov   w0, #255
  scvtf d5, x0

  // Save frequently used (1 - K)
  ldr  x0, =value_K
  ldr  d0, [x0]
  fsub d0, d1, d0
  str  d0, [fp]

  /*
   * Solve for R
   */
  // Calculate 1 - C
  ldr  x0, =value_C
  ldr  d0, [x0]
  fsub d0, d1, d0

  // Result * 255
  fmul d0, d5, d0

  // Result * (1 - K)
  ldr  d2, [fp]
  fmul d0, d0, d2

  // Save result
  fcvtas x0, d0
  ldr    x1, =value_R
  str    x0, [x1]

  /*
   * Solve for G
   */
  // Calculate 1 - M
  ldr  x0, =value_M
  ldr  d0, [x0]
  fsub d0, d1, d0

  // Result * 255
  fmul d0, d5, d0

  // Result * (1 - K)
  ldr  d2, [fp]
  fmul d0, d0, d2

  // Save result
  fcvtas x0, d0
  ldr    x1, =value_G
  str    x0, [x1]

  /*
   * Solve for B
   */
  // Calculate 1 - Y
  ldr  x0, =value_Y
  ldr  d0, [x0]
  fsub d0, d1, d0

  // Result * 255
  fmul d0, d5, d0

  // Result * (1 - K)
  ldr  d2, [fp]
  fmul d0, d0, d2

  // Save result
  fcvtas x0, d0
  ldr    x1, =value_B
  str    x0, [x1]

exit:
  add sp, sp, #16
  mov w0, #0
  mov w8, #93
  svc 0

.data
value_C: .double 0.4
value_M: .double 0.49
value_Y: .double 0.552
value_K: .double 0.36

value_R: .word 0
value_G: .word 0
value_B: .word 0
