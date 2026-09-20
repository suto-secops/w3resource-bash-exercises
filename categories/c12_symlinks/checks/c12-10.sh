assert_executable "solution.sh"
run_solution
assert_is_symlink "link_to_bin1"
actual=$(readlink -f link_to_bin1)
expected=$(readlink -f /bin)
if [ "$actual" = "$expected" ]; then
    _check_pass "'link_to_bin1' resolves to /bin"
else
    _check_fail "'link_to_bin1' resolves to /bin (got: ${actual:-N/A})"
fi
