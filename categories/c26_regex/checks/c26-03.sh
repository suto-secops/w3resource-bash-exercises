assert_executable "solution.sh"
run_solution
assert_exit_code 0

ref=$(mktemp)
cat >"$ref" <<'REF'
#!/bin/bash
regex='(https?:\/\/(www\.)?[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}([\/?][^\s]*)?)'
text="
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
"
while [[ $text =~ $regex ]]; do
    echo "${BASH_REMATCH[0]}"
    text=${text#*"${BASH_REMATCH[0]}"}
done
REF
chmod +x "$ref"
expected=$("$ref")
rm -f "$ref"

assert_stdout_equals "$expected"
