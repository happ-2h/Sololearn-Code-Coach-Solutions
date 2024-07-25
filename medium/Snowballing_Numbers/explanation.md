# Goal
Given a list, check if each number is greater than the sum of all previous numbers

# Inputs
1. Length of the list
1. List of elements

# Execution
For each number in the list, test a variable containing the sum of all numbers prior. If the current number is greater than the sum, add it to the sum and continue to the next number. Else, it is not a snowballing number, output "false"

```lua
-- First number is the first sum
sum = number[0]

-- Start at the second number
for number = numbers[1] in numbers do
  if number <= sum then
    output "false"
    exit()
  end

  sum = sum + number
end

output "true"
```