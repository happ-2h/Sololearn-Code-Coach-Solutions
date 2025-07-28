# Goal
Determine the time it'll take to get your new license

# Relevant Given Information
- 4 other people
- See everyone in alphabetical order
- Takes 20 mins to process one license
- N agents process N people

# Inputs
1. Your name
1. Number of available agents
1. Other four names
  - Assumed to be sorted

# Execution
Determine your position in line

```lua
position = 0

for name in names do
  if name < yourName then
    position = position + 1
  end
end
```

Determine which group you fall in based on the number of agents

$$
groupNumber = \lfloor \frac{position}{numberOfAgents} \rfloor
$$

Calculate the time it takes to process groups ahead of you

$$
time = 20 \times groupNumber
$$

Add 20 to process your license

$$
finalTime = 20 + time
$$

## Alternative
You can condense the calculations into one

$$
finalTime = 20 + 20 \times \lfloor \frac{position}{numberOfAgents} \rfloor \newline
\text{or} \newline
finalTime = 20 \times (1 + \lfloor \frac{position}{numberOfAgents} \rfloor)
$$

### Benefits
- Saves making extra variables