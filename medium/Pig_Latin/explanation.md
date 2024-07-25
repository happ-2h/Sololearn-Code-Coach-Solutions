# Goal
Translate English to Pig Latin

# Relevant Given Information
- Take the first letter, place it on the end, and append "ay"

# Inputs
1. English sentence

# Execution
For each word in the sentence, we need to place the first character to the and and append "ay"

```lua
for word in words do

  output (word + 1) + -- Print from second character to the end
         word[0] +    -- Print first character
         "ay "        -- Append "ay"
end
```