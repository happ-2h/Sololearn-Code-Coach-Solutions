# Goal
Convert 12-hour time format to 24-hour format

# Inputs
1. Time in 12-hour format

# Execution
If the time is in "PM," we need to add 12 to the hour; otherwise if it is "AM," we only need to convert hour 12 to 00

```lua
-- Find out if it's AM or PM
--- Second character from the end tells us this
if input[|input| - 1 - 2] is 'P' then
  hour  = hour + 12
else if hour is 12 then
  hour = 0
end

if hour < 10 then
  output '0' + hour + ':' + minute
else
  output hour + ':' + minute
end
```