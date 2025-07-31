/*
  Compiled and ran on Qualcomm Snapdragon 865
 */
  .global _start

_start:
  // Get layout
  mov w0, #0
  ldr x1, =layout
  mov w2, #255
  mov w8, #63
  svc 0

findMoneyOrThief:
  ldrb w0, [x1], #1

  // Check if reached end of string
  cmp  w0, #0
  b.eq exit
  cmp  w0, #'\n'
  b.eq exit

  // Get which is first
  cmp  w0, #'$'
  b.eq whileMoney
  cmp  w0, #'T'
  b.eq whileThief

  b findMoneyOrThief

whileMoney:
  ldrb w0, [x1], #1

  cmp  w0, #'T' // Money is not guarded
  b.eq alarm
  cmp  w0, #'G' // Money is guarded
  b.eq quiet

  b whileMoney

whileThief:
  ldrb w0, [x1], #1

  cmp  w0, #'G' // Money is guarded
  b.eq quiet
  cmp  w0, #'$' // Money is not guarded
  b.eq alarm

  b whileThief

alarm:
  ldr x1, =str_alarm
  b   print

quiet:
  ldr x1, =str_quiet

print:
  mov w0, #1
  mov w2, #5
  mov w8, #64
  svc 0

exit:
  mov w0, #0
  mov w8, #93
  svc 0

.data
layout:    .fill 255, 1, 0
str_alarm: .asciz "ALARM"
str_quiet: .asciz "quiet"
