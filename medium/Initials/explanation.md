# Goal
Create initials from a list of names

# Relevant Given Information
- Take the first letter from each name to create initials

# Inputs
1. Number of names
1. List of names

# Execution
Start of names are capitals, so we just need to output the capital letters

```lua
for name in names do
  -- First name, last name
  initials[2]
  i = 0

  for letter in name do
    if letter is capital then
      initials[i] = letter
      i = i + 1
    end
  end

  output initials[0] + initials[1] + ' '
end
```
