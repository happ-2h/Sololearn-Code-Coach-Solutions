# Goal
Replace each letter with its corresponding letter in a backwards version of the English alphabet

# Relevant Given Information
- Output is all lowercase

# Inputs
1. A message

# Execution
For each character, get its numerical offset from 'a' then subtract that offset from 'z'

```lua
for character in message do
  if character is in alphabet then
    output 'z' - (character.toLower() - 'a')
  else -- Space character
    output character
  end
```
