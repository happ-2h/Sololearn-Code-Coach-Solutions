# Goal
Determine which of two apartments has a larger balcony

# Relevant Given Information
- Both balconies are rectangles

# Inputs
1. Height and width of Apartment A's balcony
1. Height and width of Apartment B's balcony

# Execution
Calculate the area of both balconies

$$
AArea = AWidth \times AHeight
$$

$$
BArea = BWidth \times BHeight
$$

Determine which is bigger

$$
AArea < BArea
$$

```lua
if AArea < BArea then
  output "Apartment B"
else
  output "Apartment A"
end
```
