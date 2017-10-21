import random

for i in 1..<20:
  echo(i, ", ", random(120))

# select 10 random fruits
var fruits = newSeq[string](0)

var
  f: File
  fname = "fruits.txt"
  line: string
if open(f, fname):
  while f.readline(line):
    fruits.add(line)
  close(f)

# ... but first randomize the seed with current time.
import times
randomize(int(epochTime()))
for i in 0..<10:
    echo i, ", ", random(fruits)
