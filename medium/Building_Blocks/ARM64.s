/*
  Compiled and ran on Qualcomm Snapdragon 865

  Result stored in x0
 */
  .global _start

/**
 * @brief Get modulus of two numbers
 */
.MACRO mod numerator, denominator
  sdiv w6, \numerator, \denominator
  mul  w6, w6, \denominator
  sub  w6, \numerator, w6
.ENDM

_start:
  // Building blocks
  mov w0, #150 // Blue
  mov w1, #20  // Red
  mov w2, #300 // Green
  mov w3, #53  // Yellow

  mov w4, #0   // Leftover blocks
  mov w5, #15  // Number of students

  // leftOver += blueBlock % 15
  mod w0, w5
  add w4, w4, w6

  // leftOver += redBlock % 15
  mod w1, w5
  add w4, w4, w6

  // leftOver += greenBlock % 15
  mod w2, w5
  add w4, w4, w6

  // leftOver += yellowBlock % 15
  mod w3, w5
  add w4, w4, w6

  // Save result in x0
  mov w0, w4

exit:
  mov w0, #0
  mov w8, #93
  svc 0
