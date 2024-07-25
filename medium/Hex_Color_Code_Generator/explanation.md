# Goal
Output the hex representation of an RGB value

# Inputs
1. R value
1. G value
1. B value

# Execution
Convert each value to hexadecimal

```lua
function printDecToHex(n)
  results[2]

  while n is not 0 do
    remainder = n mod 16

    --[[
      65 = 'A'
      66 = 'B'
      67 = 'C'
      68 = 'D'
      69 = 'E'
      70 = 'F'
    --]]
    if r >= 10 then
      results.push(char(55 + r))
    else
      results.push(char(r))
    end

    n = n / 16
  end

  -- Print the result backwards
  --- + to concatenate the characters
  output results[1] + results[0]
end

output '#' + printDecToHex(R) +
             printDecToHex(G) +
             printDecToHex(B)
```

## Alternative
Many programming languages have functionality to print a decimal number to hex

```lua
output '#' + hex(R) + hex(G) + hex(B)
```