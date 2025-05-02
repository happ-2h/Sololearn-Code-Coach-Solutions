# Goal
Determine if a zip code is valid

# Relevant Given Information
- Zip code is only numbers
- Zip code is 5 characters long
- Zip code contains no spaces

# Inputs
1. Zip code as a string

# Execution
Function to ensure each character is a number
```lua
function isOnlyNumbers(zipcode)
  for character in zipcode
    if character < '0' or character > '9' then
      return false
    end
  end

  return true
end
```

Function to check if the zip code has spaces
```lua
function hasSpaces(zipcode)
  for character in zipcode
    if character is ' ' then
      return true
    end
  end

  return false
end
```
Combine the checks to make sure the zip code is valid
```lua
isValid = zipcode.length is 5    and
          isOnlyNumbers(zipcode) and
          not hasSpaces(zipcode)

if isValid then output "true" else output "false" end
```
