# Goal
Determine the amount of time it will take to find the item you are looking for

# Relevant Given Information
- Takes 5 minutes to drill into each box

# Inputs
1. Items in each box
1. Item you're looking for

# Execution
Compare each item to the item you're looking for. You have to add 5 for every item checked

```lua
for word in words do
  time = time + 5

  if word is item then
    output time
    exit()
  end
end

-- Assuming the item isn't in the list
output time
```
