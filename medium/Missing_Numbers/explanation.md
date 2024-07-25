# Goal
Output the missing numbers in a given sequence

# Relevant Given Information
- List is in ascending order

# Inputs
1. Length of the list
1. List of integers

# Execution
Iterate a loop from the first number of the list to the last, and compare each number with the numbers in the list. If the number exists, skip it, else print the missing number
```lua
i = 0
for currNum = numbers[0] to numbers[n - 1] do
  -- Matched number, check the next one in the list
  if numbers[i] is currNum then
    i = i + 1
  -- Number not in list. Print it
  else
    output currNum
  end
end
```