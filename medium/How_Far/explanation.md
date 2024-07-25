# Goal
Find how many blocks are between your house and the pond

# Relevant Given Information
- 'H' is your house
- 'P' is the pond
- 'B' is a block

# Inputs
- String of letters 'P', 'H', 'B'

# Execution
Go through the string until you come across a 'P' or 'H'. If you find a 'P', count the 'B's until you hit the 'H'. Else, if you find a 'H', count the 'B's until you hit a 'P'.

```lua
startCounting = false
for character in input do
  if startCounting
    if character is 'B' then
      nBlocks = nBlocks + 1
    else if character is 'P' or 'H' then
      output nBlocks
      exit()
    end
  else if not startCounting
    if character is 'P' or 'H' then
      startCounting = true
    end
  end

```