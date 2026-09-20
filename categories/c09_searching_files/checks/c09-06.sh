assert_executable "solution.sh"
run_solution
assert_exit_code 0
assert_stdout_matches_command '
shopt -s dotglob
extension="txt"
for file in *; do
    if [ "${file##*.}" = "$extension" ]; then
        echo "$file"
    fi
done
'
