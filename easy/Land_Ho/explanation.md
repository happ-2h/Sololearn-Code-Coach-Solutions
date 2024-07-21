# Goal
Determine your wait time

# Relevant Given Information
- 20 people fit per boat
- Each trip to shore takes 10 minutes each way

# Inputs
1. Number of people ahead of you in line

# Execution
Find which group you'll fall into based on your position in line
$$
groupNumber = \lfloor \frac{peopleAhead}{20} \rfloor
$$

Find the time it will take for the groups ahead of you
$$
arrivalTime = groupNumber \times (10 + 10) \Rightarrow groupNumber \times 20
$$

Add the ten minutes it takes to get to the destination
$$
totalTime = arrivalTime + 10
$$

## Alternative
You can combine all the equations into one
$$
totalTime = \lfloor \frac{peopleAhead}{20} \rfloor \times 20 + 10
$$

### Benefits
- Saves creation of extra variables
