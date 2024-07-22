# Goal
Determine if you found all the Easter eggs

# Relevant Given Information
- Compare Easter baskets to decide if you need to keep on hunting

# Inputs
1. Total number of hidden eggs
1. Amount in your basket
1. Amount your friend has found

# Execution
Calculate the total amount of found eggs

$$
totalFound = yourBasket + friendsBasket
$$

Compare with the total hidden eggs and decide if you need to keep on hunting

```lua
if totalFound < totalHidden then
  output "Keep Hunting"
else
  output "Candy Time"
end
```