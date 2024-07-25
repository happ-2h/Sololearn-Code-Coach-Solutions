# Goal
Determine the total number of moves needed between two points on a map

# Relevant Given Information
- 5x5 2D map
- Can only move left, right, up, or down
- 'P' are points
- 'X' are spaces between points

# Inputs
1. String representing the 2D space

# Execution
Find the coordinates of the two points in the 2D space

```lua
-- Points
p1 = []
p2 = []

-- Map is 5x5
for x = 0 to 5 do
  for y = 0 to 5 do
    if map[y][x] is 'P' then
      if p1 is empty then
        p1 = [x, y]
      else
        p2 = [x, y]
      end
  end
end
```

We can use the Manhattan Distance formula to find out the number of moves between two points

$$
dist = abs(x_1 - x_2) + abs(y_1 - y_2)
$$