# Goal
Decide if using Pesos or Dollars is cheaper

# Relevant Given Information
- The exchange rate is 2 cents for every Peso

# Inputs
1. Price of hat in Pesos
1. Price of hat in Dollars

# Execution
Convert price in Pesos to Dollars

$$
priceInPesos \times 0.02 = pesosToDollars
$$

Check which is lower

$$
pesosToDollars < priceInDollars
$$
$
\text{ true: pay with Pesos    }\\
\text{ false: pay with Dollars }
$

## Alternative
Convert dollars to pesos

$$
P \times 0.02 = D\\
$$
$$
\frac{P \times 0.02}{0.02} = D \times \frac{1}{0.02}
$$
$$
P = D \times 50
$$

Check which is lower

$$
P < D \times 50
$$
$
\text{ true: pay with Pesos    }\\
\text{ false: pay with Dollars }
$

### Benefits
- Computers have an easier time multiplying integers than multiplying floating-point numbers