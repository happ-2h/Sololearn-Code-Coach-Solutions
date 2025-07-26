/*
  Compiled and ran on Qualcomm Snapdragon 865
 */
  .global _start

_start:
  // Apartment A
  mov w0, #16 // Height
  mov w1, #10 // Width

  // Apartment B
  mov w2, #17 // Height
  mov w3, #10 // Width

  // Apartment A area
  mul w0, w0, w1

  // Apartment B area
  mul w2, w2, w3

  // Area of A < area of B ?
  cmp w0, w2
  b.lt aLTb
  // No: Area of B < A
  ldr x1, =str_a
  mov w2, #2

  b endif

// Yes: Area of A < B
aLTb:
  ldr x1, =str_b
  mov w2, #2

endif:
  // Print "Apartment"
  stp x1, x2, [SP, #-16]! // Save apartment letter

  mov w0, #1
  ldr x1, =str_apartment
  mov w2, #10
  mov w8, #64
  svc 0

  // Print apartment letter
  ldp x1, x2, [SP], #16 // Restore apartment letter
  mov w0, #1
  svc 0

exit:
  mov w0, #0
  mov w8, #93
  svc 0

.data
str_apartment: .asciz "Apartment "
str_a:         .asciz "A\n"
str_b:         .asciz "B\n"
