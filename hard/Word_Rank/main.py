from itertools import permutations

sequence = input()

# Create permutations and sort them
sequences = sorted(i for i in set(permutations(sequence)))

# Find placement of the given sequence
# Add 1 since it starts at 0
print(sequences.index(tuple(sequence)) + 1)