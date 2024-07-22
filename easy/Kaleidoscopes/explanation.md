# Goal
Output the total cost of the customer's order

# Relevant Given Information
- If a customer buys more than 1, they get a 10\% discount on all of them
- Tax is 7\%
- Kaleidoscopes are \$5.00

# Inputs
- Number of kaleidoscopes ordered

# Execution
Find the total before taxes

$$
total = kaleidoscopes \times price
$$

Determine if they get a discount

$$
total =
\begin{cases}
kaleidoscopes > 1 & \quad total - (kaleidoscopes \times price \times 0.10) \\
kaleidoscopes \leq 1 & \quad total
\end{cases}
$$

Add taxes

$$
  total = total + total \times 0.07
$$

## Alternative
Since the price and discount rate are fixed, we can combine them

$$
total - (kaleidoscopes \times 5.00 \times 0.10) \Rightarrow total - kaleidoscopes \times 0.5
$$

Can also be written as


$$
total - \frac{kaleidoscopes}{2}
$$

Finally, we can remove the addition of the extra total

$$
total + total \times 0.07 \Rightarrow total \times (1 + 1 \times 0.07) \Rightarrow total \times 1.07
$$

### Benefits
- Saves an expensive floating-point multiplication
- Saves an extra addition