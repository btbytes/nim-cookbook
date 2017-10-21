---
title: Sets
---

# Sets

## Create a set from a sequence

### Problem

You have an existing sequence and you want to create a set from it.

### Solution

```{.input include=code/sets01.nim}
```


## Check if a value is in the set

### Problem

You want to check if some value is in the set.

### Solution

```{.input include=code/sets02.nim}
```


## Add/remove value from a set

### Problem

You want to add or remove some value to/from the existing set.

### Solution

```{.input include=code/sets03.nim}
```


## Operations on two sets

### Problem

You want to add two sets together (union).

### Solution

```{.input include=code/sets04.nim startLine=1 endLine=8}
```


### Problem

You want to get the intersection of two sets.

### Solution

```{.input include=code/sets04.nim startLine=10 endLine=11}
```


### Problem

You want to get the difference of two sets.

### Solution

```{.input include=code/sets04.nim startLine=13 endLine=17}
```

Note: difference is non-commutative.



### Problem

You want to get the elements which are in either of two sets, but not in both (symmetric difference).

### Solution

```{.input include=code/sets04.nim startLine=19 endLine=20}
```
