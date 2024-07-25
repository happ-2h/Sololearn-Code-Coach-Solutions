# Goal
Determine if at least one string is a palindrome

# Relevant Given Information
- 4 signs per box
- Palindrome is a word or phrase that is the same backwards and forwards

# Inputs
1. Four phrases

# Execution
For each word given, check if it's a palindrome

```lua
-- str: string to check
function isPalindrome(str)
  -- Pointers to each side of the string
  lptr = 0
  rptr = str.length - 1

  while lptr <= rptr do
    -- If two characters dont match, not a palindrome
    if str[lptr] != str[rptr] then
      return false
    end

    lptr = lptr + 1 -- Increment left pointer
    rptr = rptr - 1 -- Decrement right pointer
  end

  -- Is a palindrome
  return true
end

for phrase to phrases do
  if isPalindrome(phrase) then
    output "Open"
    exit()
  end
end

output "Trash"
```
