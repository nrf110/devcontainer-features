#!/bin/bash
set -e

source dev-container-features-test-lib

check "claude is installed" claude -p -v | grep "(Claude Code)"

check "config_dir exists" test -d "/home/node/.claude"

reportResults