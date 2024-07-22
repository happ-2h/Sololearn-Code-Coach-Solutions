# Goal
Determine how many rolls of duct tape you need to cover both sides of a door

# Relevant Given Information
- One roll of duct tape is 60ft. by 2in.

# Inputs
1. Height of the door
1. Width of the door

# Execution
Find the total area of the door (2 sides)

$$
doorArea = width * height * 2
$$

Find the area of one roll of tape in feet

$$
tapeArea = 60 \times (\frac{2}{12} ) \Rightarrow \frac{120}{12} = 10
$$

Divide the areas and take the ceiling to buy the right amount

$$
\lceil{\frac{doorArea}{tapeArea}}\rceil \\
$$

$$
\text{ Or }
$$

$$
\lceil\frac{width \times height \times 2}{10}\rceil \Rightarrow \lceil\frac{width \times height}{5}\rceil
$$