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

```{.output include=code/sets01.output}
```


## Check if a value is in the set

### Problem

You want to check if some value is in the set.

### Solution

```{.input include=code/sets02.nim}
```

```{.output include=code/sets02.output}
```



## Add/remove value from a set

### Problem

You want to add or remove some value to/from the existing set.

### Solution

```{.input include=code/sets03.nim}
```

```{.output include=code/sets03.output}
```



## Operations on two sets

### Problem

You want to add two sets together (union).

### Solution

```{.input include=code/sets04.nim startLine=1 endLine=8}
```

```{.output include=code/sets04.output startLine=1 endLine=2}
```


### Problem

You want to get the intersection of two sets.

### Solution

```{.input include=code/sets04.nim startLine=10 endLine=11}
```

```{.output include=code/sets04.output startLine=3 endLine=4}
```



### Problem

You want to get the difference of two sets.

### Solution

```{.input include=code/sets04.nim startLine=13 endLine=17}
```

```{.output include=code/sets04.output startLine=5 endLine=8}
```

Note: difference is non-commutative.



### Problem

You want to get the elements which are in either of two sets, but not in both (symmetric difference).

### Solution

```{.input include=code/sets04.nim startLine=19 endLine=20}
```

```{.output include=code/sets04.output startLine=9 endLine=10}
```

