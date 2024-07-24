# Goal
Validate a credit card number by using the Luhn test

# Relevant Given Information
- Luhn formula
  1. Reverse the number
  1. Multiply every second digit by 2
  1. Subtract 9 from all numbers higher than 9
  1. Add all the digits together
  1. Modulo 10 of that sum should be equal to 0
- All valid cards have 16 digits

# Inputs
1. Credit card number as a string

# Execution
If it's not 16 digits, we can skip checking

```lua
if |input| is not 16 then
  output "not valid"
  exit()
end
```

Step 1, reverse the number

```lua
--[[
  Swap the current number with its
  mirrored index e.g.
  0 -> N - 1 - 0
  1 -> N - 1 - 1
  2 -> N - 1 - 2
  etc.

  It only has to be done N / 2 times
--]]
for i = 0 to |ccn| / 2 do
  swap(ccn[i], ccn[|ccn| - 1 - i])
end
```

Step 2, Multiply every second digit by 2

Step 3, Multiplying the digits will make then greater than 9, so we also check for that (subtract every number greater than 9 by 9)
```lua
-- We should start at the second number
for i = 1 to |ccn| do
  ccn[i] = ccn[i] * 2
  -- If the result > 9, then subtract 9
  if (ccn[i] > 9) ccn[i] = ccn[i] - 9
end
```

Step 4, add all the digits together

```lua
for i = 0 to |ccn| do
  total = total + ccn[i]
end
```

Step 5, modulo 10 of the sum should be 0

```lua
if total mod 10 is 0 then
  output "valid"
else
  output "not valid"
end
```

