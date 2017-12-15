---
title: Basics
---

## Variables

```{.input}
# declaring an integer variable include type declaration - `int`
var x: int  # at this point, x's value is set to its initial value, 0

# assigning variable
var x: int = 10
var a, b, c: int = 4

# but delcaring the type is not necessary. The compiler will infer the type.
var x = 9


# one definition rule:
# you cannot re-define a previously declared variable.

var badVariable = 12
var badVariable = 44 # (Compilation failure)

# however you can change the value of the variable
var x = 21
x = 10 # note the absence of `var` keyword 
```


## Constants

Constants need to know their value at compile time.

```{.input}
const pi = 3.14
const pi = get_at_runtime() # is a compile time error
```

## Immutable values

Immutables are declared using a `let` statements. These variables do not require to be aware of their values at compile-time.

```{.input}
let latest_tweet = get_latest_tweet('@nim_lang')
latest_tweet = get_latest_tweet('@d0m96') # is a compile time error
```
