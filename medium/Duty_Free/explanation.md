# Goal
Make sure you don't spend more than 20 dollars for any item

# Relevant Given Information
- Prices are in euros
- Don't spend more than 20 dollars for any item
- Exchange rate is 1.1 dollars to 1 euro

# Inputs
1. Prices of items in euros

# Execution
Convert every price to USD to ensure it's not over 20 dollars

```lua
for price in prices do
  if price * 1.1 > 20 then
    output "Back to the store"
    exit()
  end
end

output "On to the terminal"
```