/*
  Compiled and ran on Qualcomm Snapdragon 865
 */
  .global _start

_start:
  ldr x0, =items
  mov w5, #3 // Number of items

  ldr x1, =max
while:
  ldr d0, [x0], #8

  // Get max value
  ldr  d1, [x1]
  fcmp d0, d1
  b.gt saveLargest

// Add up all values
sum:
  fadd d2, d2, d0

  subs w5, w5, #1
  b.eq calculate
  b    while

// Save largest value
saveLargest:
  str d0, [x1]
  b   sum

calculate:
  ldr  d1, [x1]   // Retrieve max
  fsub d2, d2, d1 // total - max

  // result * discount rate
  ldr  x0, =discount_rate
  ldr  d3, [x0]
  fmul d2, d2, d3

  // result * tax rate
  ldr  x0, =tax_rate
  ldr  d3, [x0]
  fmul d2, d2, d3

  // Floor result
  fcvtms x0, d2

exit:
  mov w0, #0
  mov w8, #93
  svc 0

.data
items:         .double 100.25, 80.99, 40.00
max:           .double 0.0
discount_rate: .double 0.3
tax_rate:      .double 1.07
