/*
  Compiled and ran on Qualcomm Snapdragon 865
 */
  .global _start

_start:
  // Get input
  mov w0, #0
  ldr x1, =str_zipCode
  mov w2, #16
  mov w8, #63
  svc 0

  // Evaluate length of string
  mov x0, x1
  bl  strlen

  // Must be 5 characters
  cmp  w0, #5
  b.ne start_false

  // Does the string contain only numbers ?
  /*
    Note:
      spaces are not numbers, therefore it
      returns false when a space is encountered
   */
  ldr x0, =str_zipCode
  bl  isOnlyNums

  // No: invalid zip code
  cmp  w0, #0
  b.eq start_false

  // All tests passed; prepare "true"
  ldr x1, =str_true
  mov x2, #4

  b start_print

// Prepare "false"
start_false:
  ldr x1, =str_false
  mov w2, #5

// Print result
start_print:
  mov w0, #1
  mov w8, #64
  svc 0

exit:
  mov w0, #0
  mov w8, #93
  svc 0

/**
 * @fn isOnlyNums
 *
 * @brief Checks if a string is only numbers
 *
 * @param[in] x0: String to check
 *
 * @returns   0 if the string contains a non-number;
 *            1 if the string is all numbers
 */
isOnlyNums:
  stp x29, x30, [sp, #-16]!

  mov w5, #5 // String must be 5 characters at this point
isOnlyNums_for:
  ldrb w1, [x0], #1
  // Check if character is between '0' and '9' inclusive
  cmp  w1, #'0'
  b.lt isOnlyNums_false
  cmp  w1, #'9'
  b.gt isOnlyNums_false

  subs w5, w5, #1
  b.ne isOnlyNums_for

  // All tests passed
  mov w0, #1
  b   isOnlyNums_exit

// Non-numeric character found
isOnlyNums_false:
  mov w0, #0
  b   isOnlyNums_exit

isOnlyNums_exit:
  ldp x29, x30, [sp], #16
  ret

/**
 * @fn strlen
 *
 * @brief Calculates the length of the given string
 *
 * @param[in] x0: String to check
 *
 * @returns Length of the string
 */
strlen:
  stp x29, x30, [sp, #-16]!

  mov w5, #0 // Counter
while:
  ldrb w1, [x0], #1
  // Check if reached null terminator
  cmp w1, #0
  b.eq while_exit
  // Check if reached newline
  cmp w1, #'\n'
  b.eq while_exit

  // Increment counter
  add w5, w5, #1

  // Limit string check to 16 characters
  cmp w5, #16
  b.gt while_exit

  b while

while_exit:
  mov w0, w5
  ldp x29, x30, [sp], #16
  ret

.data
str_zipCode: .fill  16, 1, 0
str_true:    .asciz "true"
str_false:   .asciz "false"
