# Goal
Evaluate a password for validity based on a given set of rules

# Relevant Given Information
- Password must have:
  1. Minimum 2 numbers
  1. Minimum 2 special characters (\!, \@, \#, \$, \%, \&, \*)
  1. Minimum length 7 characters

# Inputs
1. Password to evaluate

# Execution
Count the number of numerals

```lua
nNumbers = 0;

for character in password do
  if character is numeral then
    nNumbers = nNumbers + 1
  end
end
```

Count the number of special characters

```lua
nSpecials = 0;

for character in password do
  when character
    is '!' then nSpecials = nSpecials + 1 end
    is '@' then nSpecials = nSpecials + 1 end
    is '#' then nSpecials = nSpecials + 1 end
    is '$' then nSpecials = nSpecials + 1 end
    is '%' then nSpecials = nSpecials + 1 end
    is '&' then nSpecials = nSpecials + 1 end
    is '*' then nSpecials = nSpecials + 1 end
  end
end
```

Do the final tests to determine if the password is valid

```lua
if
  nNumbers   >= 2 and
  nSpecials  >= 2 and
  |password| >= 7 then
  output "Strong"
else
  output "Weak"
end
```
