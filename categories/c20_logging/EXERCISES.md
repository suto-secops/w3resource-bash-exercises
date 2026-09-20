# Category 20 — Logging and error reporting

Adapted from [w3resource: Logging and error reporting](https://www.w3resource.com/bash-script-exercises/logging-and-error-reporting.php).
Timestamps are checked by pattern (`YYYY-MM-DD HH:MM:SS`), not exact
value, since the exact time depends on when you run it.

### c20-01 — Simple logging

Write a function `log_message` that appends a line of the form
`[<timestamp>] <message>` to `log.txt` (timestamp format
`%Y-%m-%d %H:%M:%S`). Call it once with the message `This is a log
message.`.

### c20-02 — Verbose logging

Always log `Starting script execution.` via `log_message`. If your
script is invoked with `-v` as its first argument, *also* log an extra
line prefixed with `[VERBOSE]` via a second function, `log_verbose`. The
checker runs your script both without and with `-v`.

### c20-03 — Error logging

Write a function `log_error` that appends timestamped lines to a
separate file, `error.log`. Use it to log two example errors: a missing
file (`Error: File 'non_existent_file.txt' not found.`) and a
division-by-zero check (`Error: Division by zero.`) — both are just
demonstrations, you don't need a file that's actually missing or a real
division.

### c20-04 — Debug mode

Using `getopts` for a `-d` flag: if it's given, log
`[DEBUG] [<timestamp>] Starting script` and, later,
`[DEBUG] [<timestamp>] Script completed` to `debug.log`. If `-d` isn't
given, don't create `debug.log` at all.

### c20-05 — Timestamps on regular messages

Log `Starting script execution.` and `Script execution completed.` to
`log.txt`, each with a `[<timestamp>]` prefix.

### c20-06 — Log rotation

Your script takes one argument, `max_size` (bytes). The exercise comes
with `log.txt` already containing some content.
- If `log.txt` exists and its size exceeds `max_size`: rename it to
  `log.txt.1` (or the next free numbered suffix if that's taken),
  gzip that renamed file, then create a fresh, empty `log.txt`. Print
  `Log file log.txt exceeds maximum size, rotating...`.
- If it exists but doesn't exceed `max_size`: leave it alone and print
  `Log file log.txt is within size limit.`.
- If it doesn't exist at all: print `Log file log.txt not found,
  creating...` and create an empty one.

The checker runs your script twice: once with a large `max_size` (no
rotation expected) and once with a tiny one (rotation expected).

### c20-07 — Logging levels

Write `log_info`, `log_warning`, and `log_error` convenience functions,
all built on a shared `log_message <level> <message>` that appends
`[<timestamp>] [<LEVEL>] <message>` to `log.txt`. Call all three with
messages of your choice.

### c20-08 — Custom log format

Default format: `%timestamp - %level: %message`. Support a `-f
<format>` option that overrides it (placeholders: `%timestamp`,
`%level`, `%message`). Print (to the terminal, not a file) three
formatted lines for levels `INFO`, `WARNING`, `ERROR` with messages of
your choice. The checker tries both the default format and a custom one
passed via `-f`.
