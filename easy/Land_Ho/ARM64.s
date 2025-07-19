/*
  Compiled and ran on Qualcomm Snapdragon 865

  Result stored in x0
 */
  .global _start

_start:
  mov w0, #15      // Number of people ahead of you
  mov w1, #20      // People per group

  sdiv w0, w0, w1  // Find your group number
  mul  w0, w0, w1  // Calculate round trip for every group
  add  w0, w0, #10 // Add 10 for your time duration to shore

exit:
  mov w0, #0
  mov w8, #93
  svc 0
