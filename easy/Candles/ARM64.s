/*
  Compiled and ran on Qualcomm Snapdragon 865

  Result stored in x0
 */
  .global _start

_start:
  mov w0, #4 // Number of friends

  // 9 * number of friends + 9
  mov  w1, #9
  madd w0, w0, w1, w1

exit:
  mov w8, #93
  svc 0
