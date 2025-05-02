# Goal
Determine the total cost of the four ordered items

# Relevant Given Information
- Nachos are \$6.00
- Pizza are \$6.00
- Cheeseburger meal is \$10.00
- Water is \$4.00
- Coke is \$5.00
- Tax is 7\%
- If a friend orders something not on the menu, order a Coke for them

# Inputs
1. The four ordered items

# Execution
Read the current item and total up the cost

```lua
if they ordered Nachos or Pizza then
  total = total + 6
else if they ordered a Cheeseburger then
  total = total + 10
else if they ordered a Water then
  total = total + 4
else if they ordered a Coke then
  total = total + 5
else total = total + 5
```

Add the 7\% tax

$$
total = total + (total * 0.07)
$$

$$
\text{Same as}\\
$$

$$
total * (1.00 + 1.00 \times 0.07) \Rightarrow total * 1.07
$$
