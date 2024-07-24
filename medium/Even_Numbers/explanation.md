# Goal
Output only even numbers from a list of numbers

# Inputs
1. Integer values

# Execution
For every number in the list, output only the even numbers

```lua
for number in numbers do
  -- If bit 0 is set, the number is odd
  if not (number and 1) then
    output number
  end
end
```