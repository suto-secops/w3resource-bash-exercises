# Category 2 — Variable declaration and usage

Adapted from [w3resource: Variable declaration and usage](https://www.w3resource.com/bash-script-exercises/variable-declaration-and-usage.php).
Where the original left a value up to you (your own name, your own age),
these exercises give you an exact value to use instead, so the result is
checkable.

### c02-01 — Simple variable declaration

Write `solution.sh` that declares a variable named `name`, sets it to
exactly `Bash`, and prints exactly:
```
The value of the variable 'name' is: Bash
```

### c02-02 — Variable interpolation

Declare two variables, `firstName` set to `Ada` and `lastName` set to
`Lovelace`. Print, using interpolation (not string concatenation typed by
hand):
```
Hello, Ada Lovelace! Nice to meet you.
```

### c02-03 — Numeric variables

Declare a variable `age` set to `42`. Print exactly:
```
I am 42 years old.
```

### c02-04 — User input

Prompt for input, read it into a variable named `mobile`, then print a
line containing `My favorite mobile is <whatever was read>.`. You can
print whatever prompt you like — the checker only looks for that line.

### c02-05 — Variable concatenation

Declare `var1` set to `Hello` and `var2` set to `Bash`. Print them
concatenated with a single space between them: exactly `Hello Bash`.

### c02-06 — Variable reassignment

Declare `x` set to `100`, then reassign it to `250`. Print exactly:
```
The updated value of x is: 250
```

### c02-07 — Variable scope

Write a function that declares a `local` variable and sets it to
`secret`, and prints `Variable inside function: secret` from inside the
function. Call the function. Afterward, *outside* the function, print a
line starting with `Variable outside function:` followed by the value of
that same variable name — since it was `local`, it won't exist out there,
so the line should end with nothing after the colon.

### c02-08 — Command output to a variable

Use command substitution to store the output of `whoami` in a variable
named `currentUser`. Print exactly:
```
Current user: <output of whoami>
```

### c02-09 — Array declaration

Declare an array named `colors` with exactly these three elements, in
this order: `red`, `green`, `blue`. Print the whole array space-separated
on one line (using `${colors[@]}`, not by hand): exactly `red green blue`.

### c02-10 — Special variables

Write `solution.sh` that prints, using the actual special
variables/parameters (not hardcoded numbers):
```
Number of arguments passed: <value of $#>
All arguments passed: <value of $@>
Name of the script: <value of $0>
```
The checker runs your script with two arguments, so you don't need to
provide any yourself.
