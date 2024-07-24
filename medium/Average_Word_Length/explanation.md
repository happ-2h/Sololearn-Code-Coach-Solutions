# Goal
Figure out the average length of all the words

# Relevant Given Information
- Remove all punctuation
- Round up to the nearest whole number

# Inputs
1. String containing multiple words

# Execution
The average is the sum of all letters divided by the sum of all words; therefore, we need to find out how many of each there are

```lua
for letter in sentence do
  if letter is in alphabet then
    nLetters = nLetters + 1
  end
  -- Space indicates the end of a word
  else if letter is ' ' then
    nWords = nWords + 1
  end
end

-- Add one for the last word
nWords  = nWords + 1

-- Round up
ceil(nLetters / nWords)
```