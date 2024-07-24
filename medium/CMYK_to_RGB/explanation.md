# Goal
Output RGB equivalent of the given CMYK value

# Relevant Given Information
- R = 255 \* (1 - C) \* (1 - K)
- G = 255 \* (1 - M) \* (1 - K)
- B = 255 \* (1 - Y) \* (1 - K)

# Inputs
1. Four decimal numbers in the range [0, 1] representing C, M, Y, K

# Execution
Use the given formulas to convert CMYK to RGB

$$
R = 255 \times (1 - C) \times (1 - K)
$$

$$
G = 255 \times (1 - M) \times (1 - K)
$$

$$
B = 255 \times (1 - Y) \times (1 - K)
$$