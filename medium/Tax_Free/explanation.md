# Goal
Find the total after taxes

# Relevant Given Information
- Don't have to pay taxes on items 20 dollars or more
- Tax is 7\%

# Inputs
1. List of prices

# Execution
Iterate through the prices. If the price is greater than 20 dollars, add it to the total without taxes; otherwise add it to the total with 7\% tax

```lua
total = 0

for price in prices do
  if price >= 20 then
    total = total + price
  else
    total = total + price * 1.07
  end
end
```