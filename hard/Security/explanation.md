# Goal
Review the diagrams to make sure you have a guard between the thief and the money

# Relevant Given Information
- One money location
- One thief location
- Many guards
- '$' is money
- 'T' is thief
- 'G' is guard
- 'x' is unoccupied floor

# Inputs
- Diagram of the money, guard, and thief placement

# Execution
Traverse the diagram.

If you come across '$' first, continue on until you hit 'T' or 'G'. 'T' sets the alarm.

If you come across 'G' first, continue on until you hit '$' or 'T'. Both set the alarm

If you come across 'T' first, continue on until you hit 'G' or '$'. '$' sets the alarm

```lua
first = ''
for character in diagram do
  -- Find the first character
  if first is '' then
    if first is not 'x' then
      first = character
    end
  else if first is '$' then
    if      character is 'G' then output "quiet" end
    else if character is 'T' then output "ALARM" end
  else if first is 'G' then
    output "ALARM"
  else if first is 'T' then
    if      character is 'G' then output "quiet" end
    else if character is '$' then output "ALARM" end
  end
end
```