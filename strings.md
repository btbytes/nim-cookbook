---
title: Strings
---

# String

## Strip leading and trailing whitespace from a string

### Problem

You want to remove unwated characters, such as whitespace, newline etc., from the beginning or end of a string.

### Solution


```{.input include=code/str01.nim startLine=1 endLine=6}
```

The default `strip` procedure will remove whitespaces both both ends. However, you can strip characters from only one end by using `trailing=true` and `leading=true` parameters.

```{.input include=code/str01.nim startLine=8 endLine=13}
```

You can specify more than one character to strip from the string (default: whitespace) by passing in a set of characers.

```{.input include=code/str01.nim startLine=15 endLine=17}
```
