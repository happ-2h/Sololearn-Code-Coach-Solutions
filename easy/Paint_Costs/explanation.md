# Goal
Calculate the total cost of your project

# Relevant Given Information
- Canvas with brush costs \$40.00
- Each color of paint is \$5.00
- Tax is 10\%
- Round up to the nearest whole number

# Inputs
- Number of colors needed

# Execution
Find the total cost of the paint

$$
paintTotalCost = nColors \times 5.00
$$

Add the cost of the canvas and brush

$$
netPrice = paintTotalCost + 40.00
$$

Add the taxes and round up

$$
total = \lceil netPrice + netPrice \times 0.07\rceil
$$

## Alternative
You can condense the final tax calculation

$$
netPrice + netPrice \times 0.07 \Rightarrow netPrice \times (1 + 1 * 0.07) \Rightarrow netPrice \times 1.07
$$

You can condense the entire calculation

$$
total = \lceil (nColors \times 5.00 + 40.00) \times 1.07 \rceil
$$

### Benefits
- Saves an addition
- Saves creations of extra variables