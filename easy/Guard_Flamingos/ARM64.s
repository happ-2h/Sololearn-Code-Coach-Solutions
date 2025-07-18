/*
  Compiled and ran on Qualcomm Snapdragon 865

  Result stored in x0
 */
  .global _start

_start:
  mov w0, #10 // Length
  mov w1, #10 // Width

  add w0, w0, w1

exit:
  mov w0, #0
  mov w8, #93
  svc 0
