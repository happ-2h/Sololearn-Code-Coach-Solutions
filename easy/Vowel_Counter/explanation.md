# Goal
Count the number of vowels in a sentence

# Relevant Given Information
- Letters can be lower or uppercase

# Inputs
1. A sentence

# Execution
Iterate the string and increment a counter if we come across a vowel

**_Be sure to consider letter casing_**
```lua
for character in string do
  if character.lowercase() is 'a' then
    counter = counter + 1
  else if character.lowercase() is 'e' then
    counter = counter + 1
  else if character.lowercase() is 'i' then
    counter = counter + 1
  else if character.lowercase() is 'o' then
    counter = counter + 1
  else if character.lowercase() is 'u' then
    counter = counter + 1
  end
end
```

## Alternative
Use a switch to prevent multiple function calls to `lowercase`

Use a bit manipulation trick to lowercase the character which saves function overhead
```lua
for character in string do
  switch(character | 0x20)
    case 'a':
    case 'e':
    case 'i':
    case 'o':
    case 'u':
      [[ fallthrough ]]
      counter = counter + 1
      break;
    default: break;
  end
end
```
### Benefits
- Removes function call overhead