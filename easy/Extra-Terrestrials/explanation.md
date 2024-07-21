# Goal
Find out how to communicate with aliens

# Relevant Given Information
- Their language is English except the words are backwards

# Inputs
1. English word

# Execution
Start at the end of the word, print the character, and traverse backwards. Repeat until done with the word

```lua
-- Starting at the end of the word
for every character in word do
  print character
  goto previous character
end
```