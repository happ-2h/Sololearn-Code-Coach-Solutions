/*
  Compiled and ran on Qualcomm Snapdragon 865

  Result stored in x0
 */
  .global _start

_start:
  mov w5, #9 // N
  mov w0, #0 // Number of set bits

while:
  cmp w5, #0
  b.eq exit

  // N = N & (N - 1)
  sub w1, w5, #1
  and w5, w5, w1

  // Increment number of set bits
  add w0, w0, #1

  b while

exit:
  mov w0, #0
  mov w8, #93
  svc 0
