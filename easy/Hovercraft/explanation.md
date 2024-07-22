# Goal
Determine if you made a profit based on how many of the ten hovercrafts sold in a month

# Relevant Given Information
- Produce 10 hovercrafts a month
- Cost 2,000,000 to produce 1 hovercraft
- Sell them for 3,000,000
- Pay 1,000,000 monthly for insurance

# Inputs
1. Number of hovercrafts sold

# Execution
Determine the fixed amount payed per month

$$
paymentsPerMonth = hovercraftsProduced \times pricePerHovercraftProduction + insurance
$$

Calculate sales of the month

$$
monthSales = hovercraftsSold \times pricePerHovercraft
$$

Determine if profit was made

$$
profit = paymentsPerMonth - monthSales
$$
```lua
if      profit < 0 then output "Profit"
else if profit > 0 then output "Loss"
else                    output "Broke Even"
```

## Alternative
Since the first six zeros will never change, and we don't need the actual numbers, we can rewrite them as `nE+6`, and can safely remove `E+6` to only have `n`

$$
1,000,000 + 2,000,000 \geq 4,000,000
$$

$$
\text{gives the same result as}
$$

$$
1 + 2 \geq 4
$$

### Benefits
- Some CPUs have lower cycle latency for smaller numbers (in respect to bit sizes)
  - Rarely matters with modern CPUs. 32 or 64-bit calculations may be more efficient than 8-bit or 16-bit calculations on the same CPU
- Prevents overflow (with anything under 32-bits)
- Easier to read