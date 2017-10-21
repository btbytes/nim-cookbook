#[
A fast way to count number of lines TXT
https://forum.nim-lang.org/t/3261
]#

import memfiles
var i = 0
for line in lines(memfiles.open("files01.nim")):
  inc(i)

echo "number of lines in files01.nim: ", i