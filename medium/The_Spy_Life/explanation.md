# Goal
Decode an encrypted secret message

# Relevant Given Information
- Decryption formula:
  1. Flip it around
  1. Remove characters that are not a letter or space

# Inputs
1. Secret message

# Execution
Flip the message

```lua
--[[
  Swap the current character with its
  mirrored index
    abcd
    a = 0
    b = 1
    c = 2
    d = 3

    swap 0 with 3
      dbca
    swap 1 with 2
      dcba
    Done in |message| / 2 iterations
--]]
for i = 0 to message / 2 do
  temp = message[i]
  message[i] = message[|message| - 1 - i]
  message[|message| - 1 - i] = temp
end
```

Output characters that are a letter or space

```lua
for character in message do
  if character.isLetter() or character.isSpace() then
    output character
  end
end
```

## Alternative
You can iterate the message backwards and print the character if it's a letter or space

```lua
for i = |message| - 1 to 0 step -1 do
  if message[i].isLetter() or message[i].isSpace() then
    output message[i]
  end
end
```

### Benefits
- Removes a loop and instructions for reversing the string