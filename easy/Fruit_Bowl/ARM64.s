/*
  Compiled and ran on Qualcomm Snapdragon 865

  Result stored in x0
 */
  .global _start

_start:
  mov w0, #26 // Total fruit in bowl

  // Number of pies = total / 6
  mov w1, #6
  sdiv w0, w0, w1

exit:
  mov w0, #0
  mov w8, #93
  svc 0
