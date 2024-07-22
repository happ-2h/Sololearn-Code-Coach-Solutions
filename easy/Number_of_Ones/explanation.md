# Goal
Count the set bits of an integer

# Inputs
- An integer

# Execution
While there are bits to check, check if bit<sub>0</sub> is set and add 1 to a counter

Shift the bits right by 1 to check the next bit

```lua
while N is not 0 do
  if N & 1 is 1 then
    totalBits = totalBits + 1
  end

  right-shift N by 1
end
```

## Alternative
Since `N & 1` will be either `1` (if set) or `0` (if reset), you can use the result to add to the counter instead of checking
```lua
while N is not 0 do
  totalBits = totalBits + (N & 1)
  right-shift N by 1
end
```

### Benefits
- Removes an `if` check

## Brian Kernighan's Algorithm
AND **N** with **N** - 1 (to clear bit<sub>0</sub>) until **N** is zero. The number of times bit<sub>0</sub> was cleared is the number of bits in **N**

```lua
while N is not 0 do
  N = N and (N - 1)
  nBits = nBits + 1
end
```

### Benefits
- Reduces the number of checks
  - O(N) to O(log(N))
