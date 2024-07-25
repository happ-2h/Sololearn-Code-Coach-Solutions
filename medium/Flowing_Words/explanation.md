# Goal
Check if the first letter of each word is the same as the last letter of the previous word

# Relevant Given Information
- Casing doesn't matter

# Inputs
1. A sentence

# Execution
When you hit a space, compare the letter before and after

```lua
for i = 0 to |sentence| do
  if sentence[i] is ' ' then
    if sentence[i-1] is not sentence[i+1] then
      output "false"
      exit()
    end
  end
end

output "true"
```