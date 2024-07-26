# Goal
Find the rank of a word

# Relevant Given Information
- Sort all the permutations of the given word. The rank is the position of the given word in the sorted list

# Inputs
1. String representing a sequence of letters

# Execution
Find all permutaions of the given string

```lua
permutations = permute(sequence)
```

Sort the permutations

$$
sorted = \{ p_1 < p_2 < p_3 < ... < p_n \}
$$

find the position of the given string in the set of sorted permutations

```lua
for i = 0 to |sorted| - 1 do
  if sorted[i] is sequence then
    output i + 1 -- i starts at 0 therefore add 1
    exit()
  end
end
```