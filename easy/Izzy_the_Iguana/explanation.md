# Goal
Evaluate whether or not you have enough snack points to convince your iguana to come down

# Relevant Given Information
- Need 10 snack points
- Lettuce is 5 points
- Carrot is 4 points
- Mango is 9 points
- Cheeseburger is 0 points

# Inputs
1. Names of snacks brought

# Execution
Add to the total points based on the evaluated input

```lua
for snack in brought snacks do
  if snack is "Lettuce"        then points = points + 5 end
  if snack is "Carrot"         then points = points + 4 end
  if snack is "Mango"          then points = points + 9 end
  if snack is "Cheeseburger"   then points = points + 0 end
end
```

## Alternative
You can omit checking for "Cheeseburger" since it doesn't change the overall point count
```lua
for snack in brought snacks do
  if snack is "Lettuce" then points = points + 5 end
  if snack is "Carrot"  then points = points + 4 end
  if snack is "Mango"   then points = points + 9 end
end
```

### Benefits
- Removes one check
- Saves an expensive string operation