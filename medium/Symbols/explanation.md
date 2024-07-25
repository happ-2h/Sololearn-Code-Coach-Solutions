# Goal
Clean up symbols from input

# Relevant Given Information
- Output should only be numbers and letters

# Inputs
1. String wit hrandom symbols

# Execution
Go through the string. If it's a letter, numeral, or space, print it; otherwise skip it

```lua
for character in input do
  if character.isLetter()  or
     character.isNumeral() or
     character.isSpace()   then
     output character
  end
end
```