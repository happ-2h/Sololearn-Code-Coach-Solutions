/*
  Compiled and ran on Qualcomm Snapdragon 865
 */
  .global _start

_start:
  mov w5, #3  // Number of yards
  mov w8, #64 // syswrite

  // Number of yards > 5 ?
  cmp  w5, #10
  b.gt highFive

  // No: number of yards < 1 ?
  cmp  w5, #1
  b.lt shh

  // Prepare "Ra!" string
  ldr w1, =str_ra
  mov w2, #3

// Yards > 0 and yards < 11 ? Print "Ra!" n times
whileYards:
  mov w0, #1
  svc 0           // Print "Ra!" to stdout
  subs w5, w5, #1 // yards = yards - 1
  b.eq exit       // Exit when yards == 0
  b whileYards    // Continue when yards > 0

// Yards > 10 ? prepare "High Five"
highFive:
  ldr x1, =str_highFive
  mov w2, #10
  b   endif

// Yards < 1 ? prepare "shh"
shh:
  ldr x1, =str_shh
  mov w2, #4

endif:
  mov w0, #1
  svc 0

exit:
  mov w0, #0
  mov w8, #93
  svc 0

.data
str_highFive: .asciz "High Five\n"
str_shh:      .asciz "shh\n"
str_ra:       .asciz "Ra!"
