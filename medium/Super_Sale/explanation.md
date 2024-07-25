# Goal
Find out how much you're going to save

# Relevant Given Information
- Pay full price for the most expensive item
- Sales tax is 7\%
- Leave anything below a dollar as a tip

# Inputs
1. Prices of items

# Execution
Go through the prices and find the most expensive item.

$$
mostExpensive = max(\{ prices_1 ... prices_n\})
$$

Find the total of all prices

$$
total = \sum_{i = 0}^{|prices|} prices_i
$$

Remove the most expensive item from the total to prepare for discounts

$$
discountOnlyItems = total - mostExpensive
$$

Append the 30\% discount

$$
discounted = discountOnlyItems \times 0.3
$$

Add 7\% tax and tip the fractional portion

$$
netPrice = \lfloor discounted + discounted * 1.07 \rfloor \Rightarrow \lfloor discounted \times (1 + 1 \times 0.07) \rfloor => \lfloor discounted \times 1.07 \rfloor
$$

## Alternative
You can combine "finding the most expensive item" and "finding the total sum" in the same loop

```lua
max = 0

for item in items do
  if item > max then max = item end
  total = total + item
end
```
You can combine the price calculations into one

$$
\lfloor (total - max) \times 0.3 \times 1.07 \rfloor
$$

To save a multiplication, you can multiply 0.3 with 1.07 and get 3.21.

$$
\lfloor (total - max) \times 3.21 \rfloor
$$

### Benefits
- Saves the usage of extra variables
- "3.21" saves a multiplication, at the cost of legibility
