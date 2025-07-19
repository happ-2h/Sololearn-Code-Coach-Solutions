/*
  Compiled and ran on Qualcomm Snapdragon 865
 */
  .global _start

_start:
  mov w0, #3 // Number of siblings
  mov w1, #9 // Number of popsicles

  // Calculate remainder
  sdiv w2, w1, w0 // Find quotient
  mul  w2, w0, w2 // Quotient * denominator
  subs w0, w1, w2 // Numerator - previous result

  // Equally distributable ?
  b.eq give

  // No: prepare "eat them yourself"
  ldr x1, =str_eat
  mov w2, #17

  b endif

// Yes: prepare "give away"
give:
  ldr x1, =str_give
  mov w2, #9

// Print result
endif:
  mov w0, #1
  mov w8, #64
  svc 0

exit:
  mov w0, #0
  mov w8, #93
  svc 0

.data
str_eat:  .asciz "eat them yourself"
str_give: .asciz "give away"
