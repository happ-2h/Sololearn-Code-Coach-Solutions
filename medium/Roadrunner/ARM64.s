/*
  Compiled and ran on Qualcomm Snapdragon 865
 */
  .global _start

_start:
  // Load variables
  ldr x0, =roadrunnerDist
  ldr d0, [x0]
  ldr x0, =roadrunnerSpeed
  ldr d1, [x0]
  ldr x0, =coyoteSpeed
  ldr d2, [x0]

  // Distance apart
  mov   w0, #50
  scvtf d5, x0

  // Find time it took to reach end
  fdiv d0, d0, d1 // Road runner distance / road runner speed
  fdiv d1, d5, d2 // Distance apart / coyote speed

  // Did the road runner reach the end before the coyote ?
  fcmp d0, d1
  b.lt yes

  // No: print "Yum"
  mov w0, #1
  ldr x1, =str_yum
  mov w2, #3
  mov w8, #64
  svc 0

  b exit

// Road runner reached the end before the coyote
yes:
  mov w0, #1
  ldr x1, =str_meepMeep
  mov w2, #9
  mov w8, #64
  svc 0

exit:
  mov w0, #0
  mov w8, #93
  svc 0

.data
roadrunnerDist:  .double 10.0
roadrunnerSpeed: .double  5.0
coyoteSpeed:     .double 20.0
str_meepMeep:    .asciz "Meep Meep"
str_yum:         .asciz "Yum"
