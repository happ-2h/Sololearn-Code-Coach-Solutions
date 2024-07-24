# Goal
Convert a camel-cased string to snake casing

# Relevant Given Information
- Capital letters are prefixed by '_'
- First letter must be lowercase

# Inputs
1. String with camelCasing

# Execution
Make sure the first letter is lowercase

```lua
if input[0] is uppercase then
  input[0].toLowercase()
end
```

Throughout the string, find any uppercased letters.

When found, prefix them with an underscore and lowercase the letter

```lua
-- Can skip 0 since we already took care of its case
for i = 1 to |input| do
  if input[i] is uppercase then
    output '_' + input[i].toLowercase()
  end
end
```
