# Goal
Determine of the given number is divisible by a list of given numbers

# Inputs
1. Number being tested
1. Numbers to test against

# Execution
Test the given number against the list of numbers for divisibility

```lua
for number in numbers do
  if number mod test is 0 then
    output "not divisible by all"
    exit()
  end
end

output "divisible by all"
```