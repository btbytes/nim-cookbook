---
title: Files I/O
---


## Memory Mapped files

[Memory mapped files](https://en.wikipedia.org/wiki/Memory-mapped_file) allows your program to access files on disk in the same way it accesses dynamic memory.

### Problem: How do I memory map files in Nim?

Example: Using [memfiles](https://nim-lang.org/docs/memfiles.html) modules to count the number of lines in a file:

```{.input}
import memfiles
var i = 0
for line in memSlices(memfiles.open("foo")):
  inc(i)
```
