# Goal
Determine if anyone in your group has the same first letter in their name as you

# Inputs
1. Group member's names
1. Your name

# Execution
For every name, compare the first charater with the first character of your name

```lua
for name in names do
  if name[0] is myName[0]
    output "Compare notes"
    exit()
  end
end

output "No such luck"
```