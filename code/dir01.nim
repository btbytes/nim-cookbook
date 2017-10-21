import os

for f in walkFiles("*.nim"):
  echo(f)

for f in walkFiles("/tmp/*/*"):
  echo(f)
