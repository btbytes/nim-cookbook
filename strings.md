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

The default `strip` procedure will remove whitespaces both both ends. However, you can strip characters from only one end by using `trailing=false` and `leading=false` parameters.

```{.input include=code/str01.nim startLine=8 endLine=13}
```

You can specify more than one character to strip from the string (default: whitespace) by passing in a set of characers.

```{.input include=code/str01.nim startLine=15 endLine=17}
```

Note the `(*`  and `*)` stripped from the ends and not from the middle of the string.


## Interpolating variables in Strings

### Problem

Create a string in which variable values can be embedded.

### Solution


```{.input include=code/tables01.nim startLine=1 endLine=6}
```


## Check the case of a string

### Problem

Check if a string is an uppercase or a lowercase.

### Solution

```{.input include=code/str02.nim startLine=1 endLine=12}
```


## Change the case of a string

### Problem

You need to change the case of a string to upper, lower, or to a sentence case (only first letter is upper).

### Solution

```{.input include=code/str03.nim startLine=1 endLine=16}
```