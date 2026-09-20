# Category 26 — Regular expressions

Adapted from [w3resource: Regular expressions](https://www.w3resource.com/bash-script-exercises/regular-expressions.php).

### c26-01 — Matching emails

Your script takes one argument, an email address. Using `[[ =~ ]]` with
this exact regex:
```
^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$
```
print `<email> - Match` or `<email> - No Match`.

### c26-02 — Finding phone numbers

Your script takes one argument, a phone-number-shaped string. Using
`[[ =~ ]]` with this exact regex:
```
^(\+?[0-9]{1,3}[-.\s]?)?(\(?[0-9]{3}\)?[-.\s]?)?[0-9]{3}[-.\s]?[0-9]{4}$
```
print `<input> - Match` or `<input> - No Match`. (Yes, some formats
you'd expect to match don't — that's this exact regex's real behavior,
not a mistake in the exercise.)

### c26-03 — Extracting URLs

Using exactly this regex:
```
(https?:\/\/(www\.)?[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}([\/?][^\s]*)?)
```
and exactly this block of text (a variable in your script, not a file):
```
Here are some URLs:
- https://www.example.com
- http://example.com
- https://example.co.uk/path?query=param
- http://www.example.org/test
- https://subdomain.example.net
- http://example.com/path/to/resource
- https://example.com?name=value&key=123
Visit https://www.another-example.com for more info.
Check out this site: http://example.io
```
extract every match with a `while [[ $text =~ $regex ]]` loop, printing
`${BASH_REMATCH[0]}` each time and then trimming the text with
`text=${text#*"${BASH_REMATCH[0]}"}` before the next iteration — print
one match per line. (This specific trim technique has real quirks with
adjacent matches; reproduce it exactly rather than "fixing" it.)

### c26-04 — Parsing dates

Using exactly these three regexes:
```
regex_mm_dd_yyyy="([0-1]?[0-9])\/([0-2]?[0-9]|3[01])\/([0-9]{4})"
regex_yyyy_mm_dd="([0-9]{4})-([0-1]?[0-9])-([0-2]?[0-9]|3[01])"
regex_written_out="([Jj]anuary|[Ff]ebruary|[Mm]arch|[Aa]pril|[Mm]ay|[Jj]une|[Jj]uly|[Aa]ugust|[Ss]eptember|[Oo]ctober|[Nn]ovember|[Dd]ecember) ([0-2]?[0-9]|3[01]), ([0-9]{4})"
```
and exactly this text:
```
Here are some dates:
- 12/25/2023
- 2024-05-20
- March 15, 2021
- 01/01/2020
- 1999-12-31
- February 29, 2020
- 10/31/2021
- 2022-11-11
```
write a function `extract_dates <regex> <text>` using the same
while-loop-and-trim technique as c26-03, and call it three times,
printing a header line before each:
```
Dates in MM/DD/YYYY format:
Dates in YYYY-MM-DD format:
Dates in written-out format:
```

### c26-05 — Validating passwords

Using `grep -P` with exactly this regex:
```
^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[@$!%*?&]).{8,}$
```
write a function `validate_password <password>` that prints
`Testing password: '<password>'` followed by `Password '<password>' is
VALID.` or `is INVALID.`. Loop over exactly this list, in order:
```
Password123!  pass123!  PASSWORD123!  Password!  Password123
P@ssw0rd  StrongP@ssw0rd  WeakPassword123  1234!@#$  Valid123@Pass  Pas1#
```
