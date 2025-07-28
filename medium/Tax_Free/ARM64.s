/*
  Compiled and ran on Qualcomm Snapdragon 865

  Result stored in d0
 */
  .global _start

_start:
  ldr x0, =prices
  mov w5, #4 // Number of items

  // Load constants
  ldr x1, =price_cap
  ldr d1, [x1]
  ldr x1, = tax_rate
  ldr d2, [x1]
while:
  subs w5, w5, #1
  b.mi exit

  ldr d0, [x0, x5, lsl #3]

  fmul  d3, d0, d2 // Price * 1.07
  // If price >= 20, select price otherwise select price * 1.07
  fcmp  d0, d1     
  fcsel d0, d0, d3, ge

  // Add up the total
  fadd d5, d5, d0

  b while

exit:
  fmov d0, d5

  mov w0, #0
  mov w8, #93
  svc 0

.data
prices:    .double 5, 18, 25, 34
price_cap: .double 20.0
tax_rate:  .double 1.07
