/*
  Compiled and ran on Qualcomm Snapdragon 865

  Result stored in x0
 */

.equ X, 0 // Current x-position being examined
.equ Y, 4 // Current y-position being examined
.equ P, 8 // Current 'P' point being checked

  .global _start

_start:
  // Allocate space on stack for 3 words
  sub sp, sp, #16

  // Initialize variables
  str xzr, [sp, #X]
  str xzr, [sp, #Y]
  str xzr, [sp, #P]

  // Get map
  mov w0, #0
  ldr x1, =map
  mov w2, #255
  mov w8, #63
  svc 0

while:
  ldrb w0, [x1], #1

  // Check if reached end of string
  cmp  w0, #0
  b.eq exit
  cmp  w0, #'\n'
  b.eq exit

  // Have we reached a point ?
  cmp  w0, #'P'
  b.ne elif

  // Yes: check the point number
  ldr w0, [sp, #P]
  // Is it the first point ?
  cmp  w0, #0
  b.ne else_pn

  // Load variables for saving 'x'
  ldr x0, =coords
  ldr w2, [sp, #X]
  ldr w3, [sp, #P]
  str w2, [x0, x3] // coords[0] = x

  // ++x
  add w2, w2, #1
  str w2, [sp, #X]

  // Load variables for saving 'y'
  ldr w2, [sp, #Y]

  // p = p + sizeof int
  add w3, w3, #4
  str w3, [sp, #P]

  str w2, [x0, x3] // coords[1] = y

  b while

// Point number is not 0
else_pn:
  // Load variables for saving 'x'
  ldr x0, =coords
  ldr w2, [sp, #X]
  ldr w3, [sp, #P]

  add w3, w3, #4   // p = p + sizeof int
  str w2, [x0, x3] // coords[2] = x

  add w3, w3, #4   // p = p + sizeof int

  ldr w2, [sp, #Y]
  str w2, [x0, x3] // coords[3] = y

  b break

elif:
  cmp  w0, #','
  b.ne else

  // ++y (next row)
  ldr w0, [sp, #Y]
  add w0, w0, #1
  str w0, [sp, #Y]

  // x = 0 (reset column count)
  str wzr, [sp, #X]

  b while

else:
  // ++x (next column)
  ldr w0, [sp, #X]
  add w0, w0, #1
  str w0, [sp, #X]

  b while

break:
  // Calculate Manhattan Distance
  ldr x5, =coords
  ldr w0, [x5]     // coords[0]
  mov w1, #8
  ldr w1, [x5, x1] // coords[2]
  sub w0, w0, w1   // coords[0] - coords[2]

  bl  abs
  str w0, [sp]     // Save result for later addition

  mov w0, #4
  ldr w0, [x5, x0] // coords[1]
  mov w1, #12
  ldr w1, [x5, x1] // coords[3]
  sub w0, w0, w1

  bl  abs

  // Add results
  ldr w1, [sp]
  add w0, w0, w1

exit:
  add sp, sp, #16
  mov w0, #0
  mov w8, #93
  svc 0

/*
 * @brief Find the absolute value of the given number
 *
 * @param[in] x0 - Number to find the absolute value of
 *
 * @returns The absolute value of the given number
 */
abs:
  stp x29, x30, [sp, #-16]!

  // Exit if sign bit is not set
  tbz w0, #31, abs_exit

  // 0 - -n = n
  sub w0, wzr, w0

abs_exit:
  ldp x29, x30, [sp], #16
  ret

.data
map:    .fill 255, 1, 0
coords: .word 0, 0, 0, 0
