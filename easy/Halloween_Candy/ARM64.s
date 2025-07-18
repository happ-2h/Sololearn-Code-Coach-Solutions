/*
  Compiled and ran on Qualcomm Snapdragon 865

  Result stored in x0
 */
  .global _start

_start:
  mov w0, #4          // Total number of visited houses
  mov w1, #0x43480000 // IEE754 200.0f

  scvtf  s0, w0
  fmov   s1, w1
  fdiv   s0, s1, s0 // 200 / visited houses
  fcvt   d0, s0     // Convert to double for ceil
  fcvtps w0, d0     // Ceil the result

exit:
  mov w0, #0
  mov w8, #93
  svc 0
