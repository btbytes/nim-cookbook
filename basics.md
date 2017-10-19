---
title: Basics
---

## Variables

```{.input}
# declaring an integer variable include type declaration - `int`
var x: int = 9

# but delcaring the type is not necessary
var x = 9

# var means x can be reassigned a new value
x = 10
```


## Constants

Constants need to know their value at compile time

```{.input}
const pi = 3.14
const pi = get_at_runtime() # is a compile time error
```

## Immutable values

Immutables are declared using a `let` statements.

```{.input}
let latest_tweet = get_latest_tweet('@nim_lang')
latest_tweet = get_latest_tweet('@d0m96') # is a compile time error
```