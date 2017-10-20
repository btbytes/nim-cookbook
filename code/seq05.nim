import sequtils

let s = @[1, 5, -3, -7, 11]

echo s.filter(proc(x: int): bool = x > 3)
echo s.filterIt(it > 3)

echo s.all(proc(x: int): bool = x > 0)
echo s.allIt(it > 0)

echo s.any(proc(x: int): bool = x > 10)
echo s.anyIt(it > 10)

