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

$$
totalFound < totalHidden
$$

$
\text{true: output "Keep Hunting"}\\
\text{false: output "Candy Time"}
$