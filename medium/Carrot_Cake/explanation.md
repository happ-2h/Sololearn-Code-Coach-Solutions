# Goal
Determine if you will have enough leftover carrots to make your cake. If not, output how many more you need

# Relevant Given Information
- Carrots must be evenly distributed
- 7 carrots make the cake

# Inputs
1. Number of carrots
1. Number of boxes

# Execution
Find out if we have any carrots remaining after evenly distributing

$$
leftover = \text{ nCarrots mod nBoxes }
$$

Find out if you have enough, and if not, output how many you need

$$
carrotsNeeded = 7 - leftOver
$$

```lua
if carrotsNeeded <= 0 then
  output "Cake Time"
else
  output "I need to buy {carrotsNeeded} more"
end
```
