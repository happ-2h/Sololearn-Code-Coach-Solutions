/*
  Compiled and ran on Qualcomm Snapdragon 865
 */

// Indicies to save length of phrases returned by the read syscall
.equ LEN_P1,  0
.equ LEN_P2,  4
.equ LEN_P3,  8
.equ LEN_P4, 12

  .global _start

_start:
  // Allocate 4 words
  sub fp, sp, #16
  sub sp, sp, #16

  // Get phrases
  mov w0, #0
  ldr x1, =phrase_1
  mov w2, #255
  mov w8, #63
  svc 0

  sub w0, w0, #1        // Remove counted '\n'
  str w0, [fp, #LEN_P1] // Save string length

  mov w0, #0
  ldr x1, =phrase_2
  svc 0

  sub w0, w0, #1        // Remove counted '\n'
  str w0, [fp, #LEN_P2] // Save string length

  mov w0, #0
  ldr x1, =phrase_3
  svc 0

  sub w0, w0, #1        // Remove counted '\n'
  str w0, [fp, #LEN_P3] // Save string length

  mov w0, #0
  ldr x1, =phrase_4
  svc 0

  sub w0, w0, #1        // Remove counted '\n'
  str w0, [fp, #LEN_P4] // Save string length

  // Check if at least one phrase is a palindrome
  ldr x0, =phrase_1
  ldr w1, [fp, #LEN_P1]
  bl  checkPal

  // Was the phrase a palindrome ?
  cmp  w0, #1
  b.eq open

  // No: check the next phrase
  ldr x0, =phrase_2
  ldr w1, [fp, #LEN_P2]
  bl  checkPal

  // Was the phrase a palindrome ?
  cmp  w0, #1
  b.eq open

  // No: check the next phrase
  ldr x0, =phrase_3
  ldr w1, [fp, #LEN_P3]
  bl  checkPal

  // Was the phrase a palindrome ?
  cmp  w0, #1
  b.eq open

  // No: check the next phrase
  ldr x0, =phrase_4
  ldr w1, [fp, #LEN_P4]
  bl  checkPal

  // Was the phrase a palindrome ?
  cmp  w0, #1
  b.eq open

// No: none were palindromes
trash:
  mov w0, #1
  ldr x1, =str_trash
  mov w2, #5
  mov w8, #64
  svc 0

  b exit

// At least one phrase was a palindrome
open:
  mov w0, #1
  ldr x1, =str_open
  mov w2, #4
  mov w8, #64
  svc 0

exit:
  add sp, sp, #16
  mov w0, #0
  mov w8, #93
  svc 0

/**
 * @brief Checks if a string is a palindrome
 *
 * @param[in] x0 - Pointer to the string
 * @param[in] x1 - Length  of the string
 *
 * @returns   0 if not a palindrome; 1 otherwise
 */
checkPal:
  stp x29, x30, [sp, #-16]!

  // Is n <= 1 ?
  cmp  w1, #1
  b.le checkPal_false

// No: check if palindrome
checkPal_pal:
  mov w4, wzr    // Left  string pointer
  sub w5, w1, #1 // Right string pointer

checkPal_pal_while:
  // Have the pointers overlapped ?
  cmp  w4, w5
  b.ge checkPal_true

  // No: continue comparing
  ldrb w2, [x0, x4] // str[lptr]
  ldrb w3, [x0, x5] // str[rptr]

  // Are the mirrored characters equal ?
  cmp  w2, w3
  b.ne checkPal_false

  // Yes: move string pointers
  add w4, w4, #1
  sub w5, w5, #1

  b checkPal_pal_while

// Is a palindrome
checkPal_true:
  mov w0, #1
  b   checkPal_exit

// Not a palindrome
checkPal_false:
  mov w0, wzr

checkPal_exit:
  ldp x29, x30, [sp], #16
  ret

.data
phrase_1:  .fill 255, 1, 0
phrase_2:  .fill 255, 1, 0
phrase_3:  .fill 255, 1, 0
phrase_4:  .fill 255, 1, 0

str_open:  .asciz "Open"
str_trash: .asciz "Trash"
