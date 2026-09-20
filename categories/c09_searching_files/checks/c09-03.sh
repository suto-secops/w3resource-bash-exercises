assert_executable "solution.sh"
run_solution
assert_exit_code 0
assert_stdout_matches_command '
current_time=$(date +%s)
three_days_ago=$((current_time - (3 * 24 * 60 * 60)))
for file in *; do
    if [ -f "$file" ] && [ $(stat -c %Y "$file") -ge "$three_days_ago" ]; then
        echo "$file"
    fi
done
'
