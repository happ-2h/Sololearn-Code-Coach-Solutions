/*
  Compiled and ran on Qualcomm Snapdragon 865

  Result stored in x0
 */
  .global _start

_start:
  mov w0, #100 // Number of carrots
  mov w1, #10  // Number of boxes
  mov w5, #7   // Carrots needed per cake

  // Carrots % boxes
  sdiv w2, w0, w1
  mul  w2, w2, w1
  sub  w2, w0, w2

  // Carrots per cake - result
  sub w0, w5, w2
exit:
  mov w0, #0
  mov w8, #93
  svc 0
