#[
A fast way to count number of lines TXT
https://forum.nim-lang.org/t/3261
#]

import memfiles
for line in lines(memfiles.open("foo")):
  inc(i)

