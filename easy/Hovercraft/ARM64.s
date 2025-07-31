/*
  Compiled and ran on Qualcomm Snapdragon 865
 */
  .global _start

_start:
  mov w0, #5 // Number of hovercrafts sold

  cmp  w0, #7
  b.gt profit
  b.lt loss

  // Profit == 7
  ldr x1, =str_brokeEven
  mov w2, #10

  b endif

// Profit > 7 prepare "Profit"
profit:
  ldr x1, =str_profit
  mov w2, #6

  b endif

// Profit < 7 prepare "Loss"
loss:
  ldr x1, =str_loss
  mov w2, #4

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
str_profit:    .asciz "Profit"
str_loss:      .asciz "Loss"
str_brokeEven: .asciz "Broke Even"
