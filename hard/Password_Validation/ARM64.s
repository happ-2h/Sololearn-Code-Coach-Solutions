/*
  Compiled and ran on Qualcomm Snapdragon 865
 */
  .global _start

_start:
  // Get password
  mov w0, #0
  ldr x1, =password
  mov w2, #255
  mov w8, #63
  svc 0

  sub w0, w0, #1 // Remove added '\n' from length

  // Is password at least 7 characters ?
  cmp  w0, #7
  b.lt weak

  mov w2, wzr // Holds number of numeric characters
  ldr x0, =password

while_numeric:
  ldrb w1, [x0], #1

  // If we reached end of string, there are less than 2 numerics
  cmp  w1, #0
  b.eq weak
  cmp  w1, #'\n'
  b.eq weak

  // Is the character within '0' - '9' ?
  cmp  w1, #'0'
  b.lt while_numeric
  cmp  w1, #'9'
  b.gt while_numeric

  // Yes: increment numerics counter
  add w2, w2, #1

  // Do we have at least two ?
  cmp  w2, #2
  b.ge specials

  b while_numeric

specials:
  mov w2, wzr // Holds number of special characters
  ldr x0, =password

specials_while:
  ldrb w1, [x0], #1

  // If we reached end of string, there are less than 2 special characters
  cmp  w1, #0
  b.eq weak
  cmp  w1, #'\n'
  b.eq weak

  cmp  w1, #'!'
  b.eq specials_while_inc
  cmp  w1, #'@'
  b.eq specials_while_inc
  cmp  w1, #'#'
  b.eq specials_while_inc
  cmp  w1, #'$'
  b.eq specials_while_inc
  cmp  w1, #'%'
  b.eq specials_while_inc
  cmp  w1, #'&'
  b.eq specials_while_inc
  cmp  w1, #'*'
  b.eq specials_while_inc

  b specials_while

specials_while_inc:
  add w2, w2, #1

  // Do we have at least 2 ?
  cmp  w2, #2
  b.ge strong

  b specials_while

// All tests passed
strong:
  ldr x1, =str_strong
  mov w2, #6

  b print

// At least one test failed
weak:
  ldr x1, =str_weak
  mov w2, #4

print:
  mov w0, #1
  mov w8, #64
  svc 0

exit:
  mov w0, #0
  mov w8, #93
  svc 0

.data
password:   .fill 255, 1, 0
str_weak:   .asciz "Weak"
str_strong: .asciz "Strong"
