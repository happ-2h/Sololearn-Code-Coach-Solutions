/*
  Compiled and ran on Qualcomm Snapdragon 865

  Result stored in x0
 */
  .global _start

_start:
  // Load variables to FPU registers
  ldr x0, =brushPrice
  ldr d0, [x0]
  ldr x0, =paintPrice
  ldr d1, [x0]
  ldr x0, =taxRate
  ldr d2, [x0]

  // Number of colors
  mov   w0, #10
  scvtf d3, x0

  fmadd d0, d1, d3, d0 // Total = paint * number of colors + brush
  fmul  d0, d0, d2     // Total * tax rate

  fcvtas x0, d0        // Round to nearest

exit:
  mov w0, #0
  mov w8, #93
  svc 0

.data
brushPrice: .double 40.00
paintPrice: .double 5.00
taxRate:    .double 1.10
