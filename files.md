---
title: Files
---

## A fast way to count number of lines

```{.input include=code/files01.nim startLine=1 endLine=9}
```

## Some approaches to manipulating text file data

- `readAll()` to read all the file into a single string variable.  Fast but not practical for enormous files.  Use `splitLines` iterator to do line-based manipulations
```{.input include=code/files02.nim startLine=141 endLine=145}
```
- `readLine()` to read from file a line at a time
```{.input include=code/files02.nim startLine=82 endLine=86}
```
- `CsvParse()` with `readRow()` to perform line-based manipulation for rows of text that need to be broken into "fields".
```
import parsecsv
```
```{.input include=code/files02.nim startLine=107 endLine=115}
```
- `memfiles` and `lines()` iterator to iterate over memory mapped portions of the file (see example above).


## Ensuring the file is closed

The `defer()` statement can be used instead of `try:` `finally:` blocks
```
  import strutils
  var   
    lineCnt = 0
    f = open("test_readfile2.nim")
  defer: close(f)
  for line in f.readAll().splitLines():
    inc lineCnt
  echo lineCnt
```
