# Goal
Determine the total cost of the four ordered items

# Relevant Given Information
- Nachos are \$6.00
- Chips are \$6.00
- Cheeseburger meal is \$10.00
- Water is \$4.00
- Coke is \$5.00
- Tax is 7\%
- If a friend orders something not on the menu, order a Coke for them

# Inputs
1. The four ordered items

# Execution
Read the current item and total up the cost

$
\text{If they ordered Nachos, add 6 to the total}\\
\text{If they ordered Chips, add 6 to the total}\\
\text{If they ordered a Cheeseburger, add 10 to the total}\\
\text{If they ordered a Water, add 4 to the total}\\
\text{If they ordered a Coke, add 5 to the total}\\
\text{If they ordered something else, add 5 (Coke) to the total}\\
$

Add the 7\% tax

$$
total = total + (total * 0.07)\\
\text{Same as}\\
total * (1.00 + 1.00 \times 0.07) \Rightarrow total * 1.07
$$
