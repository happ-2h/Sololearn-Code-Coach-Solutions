# Goal
Decompress given text

# Relevant Given Information
- Format: number next to each symbol/letter

# Inputs
1. String to decompress

# Execution
Every character in an even slot is the character to be repeated

Every character in an odd slot is a number to repeat the previous character by

```lua
for i = 0 to |input| do
  character = input[i]
  number    = input[i + 1]

  while number is not 0 do
    output character
    number = number - 1
  end

  -- Skip the number
  i = i + 1
end
```