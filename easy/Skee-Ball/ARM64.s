/*
  Compiled and ran on Qualcomm Snapdragon 865
 */
  .global _start

_start:
  mov w0, #500    // Points scored
  mov w1, #40     // Cost of squirt gun

  mov  w2, #12    // 12 points = 1 ticket
  sdiv w0, w0, w2 // Number of tickets earned

  // Tickets >= cost ?
  cmp  w0, w1
  b.ge buy

  // No: prepare "Try again"
  ldr x1, =str_tryAgain
  mov x2, #9

  b endif

// Yes: prepare "Buy it!"
buy:
  ldr x1, =str_buy
  mov w2, #7

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
str_tryAgain: .asciz "Try again"
str_buy:      .asciz "Buy it!"
