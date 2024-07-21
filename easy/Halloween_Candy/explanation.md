# Goal
Find the percentage chance that one random item pulled from your bag is a dollar

# Relevant Given Information
- All but three houses give candy
  - One gives out toothbrushes
  - Two give out dollar bills
- Number of houses visited is at least 3

# Inputs
1. Total number of houses visited

# Execution
Find the percentage of houses giving dollar bills

$$
percDollarHouse = \frac{2}{housesVisited}
$$

Convert the floating-point percentage to an integer representation

$$
percChance = percDollarHouse \times 100
$$

## Alternative
$$
percChance = \frac{2}{housesVisited} \times 100 \Rightarrow \frac{200}{housesVisited}
$$

### Benefits
- Saves a multiplication instruction
