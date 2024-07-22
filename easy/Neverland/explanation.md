# Goal
Evaluate the difference between your age and your twin

# Relevant Given Information
- You never age once in Neverland
- Your twin left the first day he went
- You never left

# Inputs
1. Your age when you arrived
1. Number of years passed since your twin left

# Execution
Since you never age in Neverland, your age never changes. Since your twin is the same age, the initial age is the same

Since your twin does age, and left the same day he arrived, his age increases with the time elapsed

$$
twinAge = myAge + yearsPassed
$$

The difference is just the years passed

$$
difference = twinAge - myAge \Rightarrow myAge + yearsPassed - myAge \Rightarrow yearsPassed
$$