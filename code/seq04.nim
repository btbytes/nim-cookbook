import sequtils
import strutils

let
  s = @["123", "98", "513"]
  n = @[11, 22, 33]

echo s.map(parseInt)

proc double(x: int): int = 2*x

echo n.map(double)
echo n.mapIt(3*it)