---
title: Sequences
---

# Sequences


## Creating an empty sequence

### Problem

You want to create an empty sequence.

### Solution

There are two possible ways of creating new sequences.

```{.input include=code/seq01.nim}
```


## Concatenating two (or more) sequences

### Problem

You want to concatenate two or more sequences into once sequence.

### Solution

```{.input include=code/seq02.nim}
```


## Find unique members of a sequence

### Problem

You have a sequence containing some duplicate elements, and you want to have only unique values.

### Solution

```{.input include=code/seq03.nim}
```


## Apply a function on all members of a sequence

### Problem

You want to apply a same function on all members of a sequence without creating for-loop.

### Solution

```{.input include=code/seq04.nim}
```


## Filter a sequence on some predicate

### Problem

You want to filter the sequence so only values satisfying some predicate are returned.

### Solution

```{.input include=code/seq05.nim startLine=1 endLine=6}
```

### Problem

You want to check if all values satisfy some predicate.

### Solution

```{.input include=code/seq05.nim startLine=8 endLine=9}
```

### Problem

You want to check if any value satisfies some predicate.

### Solution

```{.input include=code/seq05.nim startLine=11 endLine=12}
```