# Goal
Calculate the sum of all the multiples of 3 or 5 below a given number

# Relevant Given Information
- If a number is a multiple of both 3 and 5, it should appear in the sum only once

# Inputs
- Maximum number

# Execution
Subtract one from the input because we need to calculate *below* the given number
$$
N = N - 1
$$

Get the sum of all multiples of 3
$$
mult3s = \sum_{i = 1}^N
\begin{cases}
i & \quad \text{if i mod 3 = 0 })
\end{cases}
$$

Get the sum of all multiples of 5
$$
mult5s = \sum_{i = 1}^N
\begin{cases}
i & \quad \text{if i mod 5 = 0 })
\end{cases}
$$

Add the result
$$
result = mult3s + mult5s
$$

Remove the duplicates produced when a multiple of 3 and 5 were added
$$
multDups = \sum_{i = 1}^N
\begin{cases}
i & \quad \text{if i mod 15 = 0 })
\end{cases} \\
$$
$$
finalResult = result - multDups
$$

## Alternative
You can use the derived summation formula instead of a loop
$$
sum(n) = \frac{n \times (n + 1) }{2} \Rightarrow \frac{n \times n + n}{2}
$$

You can reduce the calculation since we don't sum all the numbers below **N**.

```lua
--[[
  Don't use this in your code!
  Shows we skip numbers and waste
  iterations in doing so
--]]
for i = 1 below N do
  if i mod 3 is 0 then add i end
  else skip i end
end
```
$
\text{Example for 3. It is the same for 5 and 15}
$
$$
3 + 6 + 9 + ... + N
$$
$
\text{Is the same as}
$
$$
3 \times (\frac{3}{3} + \frac{6}{3} + \frac{9}{3} + ... + \frac{N}{3}) \Rightarrow 3 \times (1 + 2 + 3 + .. + \frac{N}{3})
$$
$
\text{Which shows we only need to sum up the first 1/3 of N }
$

New formula
$$
finalResult = 3 \times sum(N / 3) + 5 \times sum(N / 5) - 15 \times sum(N / 15)
$$

### Benefits
- Removed the use of 3 loops
  - Removed the check: `if the current number is a multiple of i, add it; otherwise, do nothing`
- You can bit-shift right once to remove the division by 2 (in $sum(N)$), which is more efficient