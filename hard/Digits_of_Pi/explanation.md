# Goal
Find the Nth decimal digit of Pi

# Relevant Given Information
- $0 < N < 1000$

# Inputs
- Integer N

# Execution
You can use a formula to find Pi to the Nth digit; however, it may take up a lot of resources

Another solution is to cache the digits of Pi up to the 1000th digit

```lua
-- insert '3' to push the other digits 1 space forward
pi = "314159265..."

output pi[N]
```