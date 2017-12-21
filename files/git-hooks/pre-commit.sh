#!/bin/sh
#
# Git pre-commit hook
#

# Run the tests
if [ -f Makefile ]; then
    echo "[TEST] Running 'make test'"
    make test
    if [ $? -ne 0 ]; then
        echo ''
        echo 'Stopped you from breaking the build'
        echo ''
        exit 1
    fi
else
    echo "No Makefile found, skipping test run - lucky!"
fi

echo ''
