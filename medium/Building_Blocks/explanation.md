# Goal
Determine the amount of blocks remaining after evenly distributing them

# Relevant Given Information
- Distribute to 15 people
- 4 different colors to distribute evenly

# Inputs
1. Four integers representing the amount of red, blue, green, and yellow block

# Execution
We must calculate the remainder after distribution

$$
\sum_{i = 0}^{n} colors_i \text{ mod 15 }
$$