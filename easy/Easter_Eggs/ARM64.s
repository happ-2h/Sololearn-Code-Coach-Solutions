/*
  Compiled and ran on Qualcomm Snapdragon 865
 */
  .global _start

_start:
  mov w0, #100 // Total number of eggs
  mov w1, #40  // Number of eggs in your basket
  mov w2, #60  // Number of eggs in friend's basket

  // Your eggs + friend's eggs
  add w3, w2, w1

  // Total found < total hidden ?
  cmp w3, w0
  b.lt foundLThidden

  // No: prepare string "Candy Time"
  ldr x1, =str_candyTime
  mov w2, #11

  b endif

// Yes: prepare string "Keep Hunting"
foundLThidden:
  ldr x1, =str_keepHunting
  mov w2, #13

endif:
  // Print result
  mov w0, #0
  mov w8, #64
  svc 0
  
exit:
  mov w0, #0
  mov w8, #93
  svc 0

.data
str_keepHunting: .asciz "Keep Hunting\n"
str_candyTime:   .asciz "Candy Time\n"
