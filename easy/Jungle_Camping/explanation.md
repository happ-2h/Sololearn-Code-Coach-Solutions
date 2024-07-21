# Goal
Determine which animals are nearby based on noises

# Relevant Given Information
- Lions say 'Grr'
- Tigers say 'Rawr'
- Snakes say 'Ssss'
- Birds say 'Chirp'

# Inputs
- Noises heard

# Execution
Examine every noise heard and determine which animal it came from

```lua
for noise in noises heard do
  if noise is "Grr"   then output "Lion"  end
  if noise is "Rawr"  then output "Tiger" end
  if noise is "Ssss"  then output "Snake" end
  if noise is "Chirp" then output "Bird"  end
end
```