/*
  Compiled and ran on Qualcomm Snapdragon 865

  Result stored in x0
 */
  .global _start

_start:
  // Door dimensions
  mov x0, #7 // Height
  mov x1, #4 // Width

  // Area of a door side
  mul x0, x0, x1

  // Divide by 5 and get ceiling
  fmov d0, x0
  fmov d1, #5
  fdiv d0, d0, d1
  fmov x0, d0

exit:
  mov w8, #93
  svc 0
