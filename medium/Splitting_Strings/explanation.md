# Goal
Split the string into even parts based on a provided number

# Relevant Given Information
- Split even parts seperated by hyphens
- Last part doesn't have to be split if it can't be split evenly

# Inputs
1. String to split
1. Number to base the split off of

# Execution
Loop through the string and print the current character. If the position is divisible by the number provided, print '-'

```lua
for i = 0 to |input| do
  output input[i]

  if i mod n is 0 then
    output '-'
  end
end
```