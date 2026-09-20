# Category 25 — Returning values from functions

Adapted from [w3resource: Returning values from functions](https://www.w3resource.com/bash-script-exercises/returning-values-from-functions.php).
The pattern throughout: a function `echo`s its result instead of
printing a full sentence, and the caller captures that with
`result=$(function args)` before printing the final message itself.

### c25-01 — Addition

Define `add` (echoes just the sum). Call `result=$(add 25 23)` and
print `The sum is: <result>`.

### c25-02 — Subtraction

Define `subtract` (echoes just the difference). Call with `14 4` and
print `The difference is: <result>`.

### c25-03 — Multiplication

Define `multiply` (echoes just the product). Call with `6 7` and print
`The product is: <result>`.

### c25-04 — Division

Define `divide` (echoes just the result, two decimals via `bc`). Call
with `100 4` and print `The division result is: <result>`.

### c25-05 — Factorial (recursive)

Define `factorial` *recursively* (it calls itself, base case `n <= 1`
echoes `1`). Prompt for a number, read it. If it's not a non-negative
integer, print `Please enter a non-negative integer.`. Otherwise print
`Factorial of <n> is <result>`.

### c25-06 — Maximum, from user input

Define `maximum`. Prompt for two numbers, read them. If either isn't a
valid number (integer or decimal, optionally negative), print `Please
enter valid numbers.`. Otherwise print `The maximum of <a> and <b> is
<result>`.

### c25-07 — Minimum, from user input

Same idea with `minimum`: print `The minimum of <a> and <b> is
<result>`, or the same validation message on bad input.

### c25-08 — Square, from user input

Define `square`. Prompt for a number, read it. If invalid, print
`Please enter a valid number.`. Otherwise print `The square of <n> is
<result>`.

### c25-09 — Power, from user input

Define `power`. Prompt for a base and an exponent, read them both.
Print `<base> raised to the power of <exponent> is <result>`.

### c25-10 — Prime check, from user input

Define `is_prime` (echoes the literal word `true` or `false`, nothing
else). Prompt for a number, read it. If it's not a non-negative
integer, print `Please enter a valid non-negative integer.`. Otherwise
print `Is <n> a prime number? <result>`.
