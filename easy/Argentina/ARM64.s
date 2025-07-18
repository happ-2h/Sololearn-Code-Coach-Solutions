/*
  Compiled and ran on Qualcomm Snapdragon 865
 */

  .global _start

_start:
  mov w0, #1000 // Price in Pesos
  mov w1, #10   // Price in Dollars

  // Pesos = Dollars * 50
  mov w2, #50
  mul w3, w1, w2

  // Pesos < Dollars ?
  cmp w0, w3
  b.lt pLTd

  // No: Dollars < Pesos
  ldr x1, =str_dollars
  mov x2, #8
  b endif

  // Yes: Pesos < Dollars
pLTd:
  ldr x1, =str_pesos
  mov x2, #6

endif:
  // Print result
  mov x0, #1
  mov x8, #64
  svc 0

exit:
  mov w0, #0
  mov w8, #93
  svc 0

.data
str_pesos:   .asciz "Pesos\n"
str_dollars: .asciz "Dollars\n"
