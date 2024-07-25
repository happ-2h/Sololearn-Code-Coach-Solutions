# Goal
Find the corresponding Q-Sequence value

# Relevant Given Information
- Q(1) = 1
- Q(2) = 1
- Q(N) = Q(N - Q(N - 1)) + Q(N - Q(N - 2))

# Inputs
1. Integer N

# Execution
Find the Nth sequence

```lua
Q[0] = 1
Q[1] = 1

for i = 2 to N do
  Q[i] = Q[i - Q[i - 1]] + Q[i - Q[i - 2]]
end

output Q[N - 1]
```