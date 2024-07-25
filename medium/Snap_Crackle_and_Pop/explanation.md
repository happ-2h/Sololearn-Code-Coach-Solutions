# Goal
Output a noise based on the amount of Rice Krispies in each bowl

# Relevant Given Information
- If amount is divisible by 3, output "Pop"
- If it's not divisible by 3, but odd, output "Snap"
- If it's not divisible by 3, but even, output "Crackle"

# Inputs
1. 6 integers; each representing the amount in each bowl

# Execution
Test each number against the conditions and output the sound based on the result

```lua
for quantity in quantities do
  -- Divisible by 3
  if quantity mod 3 is 0 then
    output "Pop "
  -- Odd
  --- First if-condition takes care of "not divisible by 3"
  else if quantity and 1 is 0 then
    output "Snap "
  -- Even
  --- First if-condition takes care of "not divisible by 3"
  else
    output "Crackle "
  end
end
```