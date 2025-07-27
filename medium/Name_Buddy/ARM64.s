/*
  Compiled and ran on Qualcomm Snapdragon 865
 */
  .global _start

_start:
  // Get names
  mov w0, #0
  ldr x1, =names
  mov w2, #255
  mov w8, #63
  svc 0

  // Get name
  mov w0, #0
  ldr x1, =name
  svc 0

  ldr  x0, =names
  ldrb w1, [x1] // First character of our name

  // Compare first character
  ldrb w2, [x0], #1
  cmp  w1, w2
  b.eq hasBuddy

while:
  ldrb w2, [x0], #1
  // Check if reached end of string
  cmp  w2, #'0'
  b.eq noLuck
  cmp  w2, #'\n'
  b.eq noLuck

  // Continue if space not reached
  cmp  w2, #' '
  b.ne while

  // Compare first letters
  ldrb w2, [x0]
  // Continue of not equal
  cmp  w1, w2
  b.ne while

// Is equal ? friend has the same first letter
hasBuddy:
  mov w0, #1
  ldr x1, =str_compare
  mov w2, #13
  mov w8, #64
  svc 0

  b exit

// No friends have the same first letter
noLuck:
  mov w0, #1
  ldr x1, =str_noLuck
  mov w2, #12
  mov w8, #64
  svc 0

exit:
  mov w0, #0
  mov w8, #93
  svc 0

.data
names:       .fill 255, 1, 0
name:        .fill 255, 1, 0
str_compare: .asciz "Compare notes"
str_noLuck:  .asciz "No such luck"
