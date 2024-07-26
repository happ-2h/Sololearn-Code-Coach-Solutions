# Goal
Find the math expression that evaluates to the given answer

# Relevant Given Information
- '+', '-', '*', and '/' are supported

# Inputs
1. Answer to test expressions against
1. Math expressions

# Execution
Evaluate every given math expression until one of them evaluates to the given answer

```lua
for i = 0 to |expressions| - 1 do
  if answer is eval(expressions[i]) then
    output "index " + i
  end
end
```