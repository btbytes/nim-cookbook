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

## Conditionals

**If statements:**

The `if` conditionals are not too different from that of python:

```{.input}
if a == 3:
    makePie()
elif:    # else if
    makeCookie()
else:
    orderFood()

if a == b : doThis() else: doThat()

var x = if a != b: doThis() else: dothat()

# `and` and `or` operator
echo if 12 == 12 and 4 == 4.0 or 2 != 23 : "works" else: "something went wrong"
```

Note that `if` expects a `bool`. Unlike other languages, the following will not compile. The compiler is not guarantee that its going to promote types to `bool`:
```{.input}
let x = 0
echo if x : "This" else: "That"  # Expected bool, got int.
```

**When statement:**

It works as a compile time `if` or `#ifdef`.  The conditions must be known at compile-time. Please note that `when` statements do **NOT** create an isolated scope within the statements. Also, the compiler checks the semantics and produces code only for the statements that belong to the first condition that evaluates to true.


```{.input}
when system.hostOS == "Linux"
    bool isNix = true
    echo "Running on Linux!"

if isNix: 	# Note how `isNix` is available outside the `when` block
    doThis()
```

**Case statement:**

Adding `break` is not required in Nim to prevent fall-through.

```{.input}
let n = 34
case n:
    of 0 .. 50: echo "first case"
    of 51, 52: echo "second case"
    of 53 .. 100, 101 .. 200: echo "third case"
    else:  echo "No coverage"   # default
```

## Loops

Nim encourages looping with iterators.  Basic `while` loops are supported out of the box. The `for` loops are not the same as that of C. However with templates, that can be emulated. We will not cover that here.

Also, the `++` or `--` operator does not come out of the box with Nim. You can use the `+=` or `-=` or etc instead. You can also use the `inc()` or `dec()` procedures as well.

**While loops:**
```{.input}
var x = 0;
while x < 10:
    echo x
    x += 1   # or inc(x)
```

**For loops:**
Most `for` loops are done via iterators. 

```{.input}
# incluive 
for i in 0 .. 5:
    stdout.write(i, " ") # prints "0 1 2 3 4 5 "
for i in countup (0, 5);
    stdout.write(i, " ") # prints "0 1 2 3 4 5 "
    
# inclusive, and specifying the step
for i in countup(0, 20, step = 5):  
    # you don't need to explicitly write the `step =` part
    stdout.write(i, " ") # "0 5 10 15 20 "

# not tail inclusive
for i in 0 .. <6:
    stdout.write(i, " ")  # prints "0 1 2 3 4 5 "
# reverse
for i in countdown(10, 0, 1):
    stdout.write(i, " ")
```

**Break statement:**

Break is used to break out of the current loop

```{.input}
for i in 0 .. 10:
	if isPrime(i): break
```
**Block labels:**

You can label a certain block to break out of it :

```{.input}
block parentLoop:
    for i in countup(0, 100):
        for j in countup(1, 10):
            if i + j > 50: 
                break parentLoop
        
```
