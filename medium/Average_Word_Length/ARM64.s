/*
  Compiled and ran on Qualcomm Snapdragon 865

  Result stored in x0
 */
  .global _start

_start:
  // Get input
  mov w0, #0
  ldr x1, =str_words
  mov w2, #255
  mov w8, #63
  svc 0

  mov w4, #0 // Number of words
  mov w5, #0 // Number of letters

while: 
  ldrb w0, [x1], #1
  // Check if reached end of string 
  cmp w0, #0
  b.eq average
  cmp w0, #'\n'
  b.eq average

  // Ensure the character is lowercase
  orr w0, w0, #0x20

  // Is character a space ?
  cmp w0, #' '
  b.ne checkLetter

  // Yes: we completed a word
  add w4, w4, #1

  b while

// No: check if it's an alphabetic character
checkLetter:
  // Is character between 'a' and 'z' inclusive ?
  cmp w0, #'a'
  b.lt while
  cmp w0, #'z'
  b.gt while

  // Yes: increment number of characters
  add w5, w5, #1
  
  b while

// Calculate the average
average:
  // Increment for the uncounted last word
  add w4, w4, #1

  scvtf d0, x5
  scvtf d1, x4

  // letters / words
  fdiv d0, d0, d1

  // Take the ceiling
  fcvtps x0, d0

exit:
  mov w0, #0
  mov w8, #93
  svc 0

.data
str_words: .fill 255, 1, 0
