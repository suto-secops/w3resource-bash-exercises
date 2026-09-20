assert_executable "solution.sh"
run_solution
assert_exit_code 0
assert_stdout_contains '^Displaying the last 20 lines of /var/log/syslog:$'
assert_stdout_contains '^log line 25$'
assert_stdout_not_contains '^log line 5$'
