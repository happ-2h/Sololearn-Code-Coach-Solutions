/*
  Compiled and ran with Qualcomm Snapdragon 865

  Result stored in d0
 */
  .global _start

_start:
  mov x0, #4 // Number of ordered kaleidoscopes

  // Total before taxes
  scvtf d0, x0
  fmov  d1, #5
  fmul  d0, d0, d1

  // Kaledioscopes <= 1 ?
  cmp w0, #1
  b.le addTax

  // No: provide discount
  scvtf d1, x0
  fmov  d2, #0.5
  fmul  d3, d1, d2
  fsub  d0, d0, d3

addTax:
  ldr  x0, =taxRate
  ldr  d1, [x0]
  fmul d0, d0, d1

exit:
  mov w0, #0
  mov w8, #93
  svc 0

.data
taxRate: .double 1.07
