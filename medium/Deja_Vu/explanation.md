# Goal
Evaluate if any letter is repeating

# Relevant Given Information
- Only letters were pressed

# Inputs
1. String of random letters

# Execution
For every letter, check if any other letter is the same

```lua
for letter in input - 1 do
  for i = letter + 1 in input do
    if i is letter then
      output "Deja Vu"
      exit()
    end
  end
end

-- No duplicates found
output "Unique"
```

## Alternative
You can put the letter in a map, and if a slot is taken, then a duplicate was found

```lua
for letter in input do
  if charmap.contains(letter) then
    output "Deja Vu"
    exit()
  end

  charmap.insert(letter)
end
```

### Benefits
- Requires only one string iteration at the expense of extra space for the map