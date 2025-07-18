/*
  Compiled and ran on Qualcomm Snapdragon 865
 */
  .global _start

_start:
  mov w0, #7 // Total number of criminals

  // Criminals < 5 ?
  cmp w0, #5
  b.lt iGotThis

  // Criminals < 11 ?
  cmp w0, #11
  b.lt helpMe

  // Else prepare "Good Luck out there!"
  ldr x1, =str_goodLuck
  mov w2, #20
  b endif

// Prepare "I got this!"
iGotThis:
  ldr x1, =str_iGotThis
  mov w2, #11
  b endif

// Prepare "Help me Batman"
helpMe:
  ldr x1, =str_helpMe
  mov w2, #14

endif:
  mov w0, #1
  mov w8, #64
  svc 0
  
exit:
  mov w0, #0
  mov w8, #93
  svc 0

.data
str_iGotThis: .asciz "I got this!"
str_helpMe:   .asciz "Help me Batman"
str_goodLuck: .asciz "Good Luck out there!"
