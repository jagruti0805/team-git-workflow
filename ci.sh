#!/usr/bin/env bash
set -eu

if grep -Eiq 'password[[:space:]]*=' app.txt; then
    echo "ERROR: Possible password leak!"
    exit 1
fi

echo "CI passed"
