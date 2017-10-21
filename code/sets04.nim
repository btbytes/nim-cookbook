import sets

let
  a = [1, 2, 3, 4, 5].toSet()
  b = [3, 4, 5, 6, 7].toSet()

echo union(a, b)
echo a + b

echo intersection(a, b)
echo a * b

echo difference(a, b)
echo a - b

echo difference(b, a)
echo b - a

echo symmetricDifference(a, b)
echo a -+- b