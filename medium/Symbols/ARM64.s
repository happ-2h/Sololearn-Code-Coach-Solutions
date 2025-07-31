/*
  Compiled and ran on Qualcomm Snapdragon 865
 */
  .global _start

_start:
  // Get symbols
  mov w0, #0
  ldr x1, =symbols
  mov w2, #255
  mov w8, #63
  svc 0

for:
  ldrb w0, [x1]
  // Check if reached end of string
  cmp  w0, #0
  b.eq exit
  cmp  w0, #'\n'
  b.eq exit

  // If character is a space, print it
  cmp  w0, #' '
  b.eq printChar

  // Else, if it's alphanumeric, print it
  bl   isalnum
  cbnz w0, printChar

inc:
  add x1, x1, #1
  b   for

// Print a space or alphanumeric character
printChar:
  mov w0, #1
  mov w2, #1
  mov w8, #64
  svc 0

  b inc

exit:
  mov w0, #0
  mov w8, #93
  svc 0

/**
 * @brief Check if a character is alphanumeric
 *
 * @param[in] x0 - Character to check
 *
 * @returns 1 if character is alphanumeric; 0 otherwise
 */
isalnum:
  stp x29, x30, [sp, #-16]!

  orr w0, w0, #0x20 // toLower

  // Is character within 'a' - 'z' ?
  cmp  w0, #'a'
  b.lt isalnum_numeric
  cmp  w0, #'z'
  b.gt isalnum_false

  // Yes: return true
  mov w0, #1

  b isalnum_exit

// Is character within '0' - '9' ?
isalnum_numeric:
  cmp  w0, #'0'
  b.lt isalnum_false
  cmp  w0, #'9'
  b.gt isalnum_false

  // Yes: return true
  mov w0, #1

  b isalnum_exit

isalnum_false:
  mov w0, #0

isalnum_exit:
  ldp x29, x30, [sp], #16
  ret

.data
symbols: .fill 255, 1, 0
