# Goal
Determine whether or not the roadrunner made it to safety

# Relevant Given Information
- Start out 50 feet apart

# Inputs
1. Distance roadrunner is from safety
1. Roadrunner's speed (ft/s)
1. Coyote's speed (ft/s)

# Execution
We need to find out who made it first (time). In that case, we can use `speed = distance / time => time = distance / speed`

```lua
if roadrunnerDist / roadrunnerSpeed < 50 / coyoteSpeed then
  output "Meep Meep"
else
  output "Yum"
end
```