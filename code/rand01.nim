import random

# Print 19 random numbers from 0 to 119
for i in 1..<20:
  echo(i, ", ", random(120))

var fruits = newSeq[string]()

# Iterate over all lines in "fruits.txt"
for line in "fruits.txt".lines:
  fruits.add(line)

# Randomize the seed (current time is used to randomize it by default)
randomize()

# Select 10 random fruits
for i in 0..<10:
  echo i, ", ", random(fruits)
