/*
  Compiled and ran on Qualcomm Snapdragon 865
 */
  .global _start

_start:
  ldr x0, =bowls

  mov w3, #3 // Check if divisible by 3
  mov w1, #0 // Array index
for:
  ldr w2, [x0, x1, lsl #2]

  // bowl[i] % s == 0 ? 
  sdiv w4, w2, w3
  mul  w4, w4, w3
  subs w4, w2, w4
  b.eq pop

  // bowl[i] is odd ?
  tbnz w2, #0, snap

  // If neither is true, print "Crackle"
  // Preserve previous values
  stp x0, x1, [sp, #-16]!

  mov w0, #1
  ldr x1, =str_crackle
  mov w2, #8
  mov w8, #64
  svc 0

  // Restore previous values
  ldp x0, x1, [sp], #16

inc:
  add w1, w1, #1
  cmp w1, #6
  b.eq exit
  b for

// Print "Pop"
pop:
  // Preserve previous values
  stp x0, x1, [sp, #-16]!

  mov w0, #1
  ldr x1, =str_pop
  mov w2, #4
  mov w8, #64
  svc 0

  // Restore previous values
  ldp x0, x1, [sp], #16

  b inc

// Print "Snap"
snap:
  // Preserve previous values
  stp x0, x1, [sp, #-16]!

  mov w0, #1
  ldr x1, =str_snap
  mov w2, #5
  mov w8, #64
  svc 0

  // Restore previous values
  ldp x0, x1, [sp], #16
  b inc

exit:
  mov w0, #0
  mov w8, #93
  svc 0

.data
bowls:       .word 18, 5, 100, 25, 40, 24
str_pop:     .asciz "Pop "
str_snap:    .asciz "Snap "
str_crackle: .asciz "Crackle "
