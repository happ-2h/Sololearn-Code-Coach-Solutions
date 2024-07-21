# Goal
Detect if a word is an isogram

# Relevant Given Information
- An isogram is a word that has no repeating letters, whether they're consecutive or not

# Inputs
1. Word to be checked

# Execution
For each character in the word, check if another character within the word is the same

$$
\sum_{ i = 0 }^{ |word| - 1 }
\sum_{ j = i + 1 }^{ |word| }
\begin{cases}
false & \quad \text{if } word_i = word_j\\
\end{cases}
$$

## Alternative
Create a seperate map that adds a character every time it's encountered. If the character is already in the map, then the word is not an isogram

```lua
for every character in word do
  if charmap.exists(current character) then
    output "false"
    break -- We can end the loop
  end

  charmap.place(current character)
end

```

### Benefits
- You only need to traverse the word once, at the expense of extra storage

