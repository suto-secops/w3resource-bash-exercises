#!/usr/bin/env bash
# Fixtures for c28_system_commands.

fixture_c28_10() {
    # /var/log/syslog doesn't exist in this minimal container by default
    # (no syslog daemon, no systemd/journalctl either) -- create it so the
    # exercise's first branch is the one that actually runs, deterministically.
    sudo bash -c 'seq 1 25 | sed "s/^/log line /" > /var/log/syslog'
}
