/*
  Compiled and ran on Qualcomm Snapdragon 865

  Result stored in x0
 */
  .global _start

_start:
  mov w5, #10    // N max
  sub w5, w5, #1 // Sum does not include N

  // Parameter n / 3
  mov w4, #3
  sdiv w0, w5, w4
  bl sum

  // 3 * sum(n / 3)
  mul w1, w0, w4

  // Parameter n / 5
  mov w4, #5
  sdiv w0, w5, w4
  bl sum

  // 5 * sum(n / 5)
  mul w2, w0, w4

  // Parameter n / 15
  mov w4, #15
  sdiv w0, w5, w4
  bl sum

  // 15 * sum(n / 15)
  mul w3, w0, w4

  add w0, w1, w2 // (3 * sum(n/3)) + (5*sum(n/5))
  sub w0, w0, w3 // Previous result - (15 * sum(n/15))

exit:
  mov w0, #0
  mov w8, #93
  svc 0

/**
 * @brief Calculates the sum of natural numbers
 *        from 1 to n
 *
 * @param[in] x0: Last number of the summation
 *
 * @returns Calculated summation n(n + 1) / 2
 */
sum:
  stp x29, x30, [sp, #-16]!

  madd w0, w0, w0, w0 // n * n + n
  lsr  w0, w0, #1     // Divide by 2

  ldp x29, x30, [sp], #16
  ret
