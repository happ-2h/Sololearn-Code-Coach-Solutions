/*
  Compiled and ran on Qualcomm Snapdragon 865

  Result stored in x0
 */
  .global _start

_start:
  mov w0, #5 // N-th sequence
  bl  q

exit:
  mov w0, #0
  mov w8, #93
  svc 0

/**
 * @brief Calculate Nth Hofstadter's Q-Sequence
 *
 * @param[in] x0 - Nth value to find the sequence of
 *
 * @returns Nth value in the Hofstadter's Q-Sequence
 */
q:
  stp x29, x30, [sp, #-16]!
  // Allocate 1 word
  sub fp, sp, #16
  sub sp, sp, #16

  // Is N >= 3 ?
  cmp  w0, #3
  b.ge q_else

  // No: Q(1) and Q(2) must return 1
  mov w0, #1

  b q_exit

// Yes: find the sequence
q_else:
  str w0, [fp]     // Save current n to stack

  // q(n - 1)
  sub w0, w0, #1   // n - 1
  bl  q            // q(n - 1)

  // n - q(n - 1)
  ldr w1, [fp]     // Retrieve local n
  sub w0, w1, w0   // n - result
  bl  q            // q(result)
  str w0, [fp, #4] // Save result for future addition

  // q(n - 2)
  ldr w0, [fp]     // Retrieve local n
  sub w0, w0, #2   // n - 2
  bl  q            // q(n - 2)

  // n - q(n - 2)
  ldr w1, [fp]     // Retrieve local n
  sub w0, w1, w0   // n - result
  bl  q            // q(result)

  // q(n - q(n - 1)) + q(n - q(n - 2))
  ldr w1, [fp, #4] // Retrieve  result of q(n - q(n - 1))
  add w0, w1, w0   // Add it to result of q(n - q(n - 2))

q_exit:
  add sp, sp, #16
  ldp x29, x30, [sp], #16
  ret
