# Goal
Write numbers in integer format to English format

# Relevant Given Information
- Numbers 10 and under

# Inputs
1. Phrase with words and numbers

# Execution
Iterate the words in the sentence. If a "word" is a number, convert it to English

```lua
for word in words do
  if word is numeral then
    when word
      is  1 then output "one"
      is  2 then output "two"
      is  3 then output "three"
      is  4 then output "four"
      is  5 then output "five"
      is  6 then output "six"
      is  7 then output "seven"
      is  8 then output "eight"
      is  9 then output "nine"
      is 10 then output "ten"
    end
  else
    output word
  end
end
```
