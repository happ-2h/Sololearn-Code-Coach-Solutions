# Goal
Determine if you have enough tickets to get a squirt gun

# Relevant Given Information
- 1 ticket is 12 points

# Inputs
1. Points scored
1. Cost of the squirt gun

# Execution
Convert points to tickets

$$
tickets = \lfloor points / 12 \rfloor
$$

Check if you have enough tickets
```lua
if tickets >= cost then
  output "Buy it!"
else
  output "Try again"
end
```

## Alternative
You can move the conversion inside the conditional of the if-statement
```lua
if floor(points / 12) >= cost then
  output "Buy it!"
else
  output "Try again"
end
```

### Benefits
- Saves the creation of a variable