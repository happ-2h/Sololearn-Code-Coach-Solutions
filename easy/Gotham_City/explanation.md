# Goal
Determine whether you need to call backup based on the number of criminals being reported

# Relevant Given Information
- Less than 5, output "I got this!"
- 5 to 10, output "Help me Batman"
- More than 10, output "Good Luck out there!"

# Inputs
- Total number of criminals

# Execution
Compare the input and determine the backup level based on that number

```lua
if criminals <  5 then output "I got this!"
if criminals < 11 then output "Help me Batman"
else              then output "Good Luck out there!"
```