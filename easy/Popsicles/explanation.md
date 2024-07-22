# Goal
Determine if you can evenly distribute popsicles

# Inputs
1. Number of siblings
1. Number of popsicles

# Execution
Check if the number of popsicles is evenly distributable to the number of siblings

```lua
if nPopsicles mod nSiblings is 0 then
  output "give away"
else
  output "eat them yourself"
end
```