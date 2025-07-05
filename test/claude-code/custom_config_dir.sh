#!/bin/bash
set -e

source dev-container-features-test-lib

check "custom config_dir exists" test -d "/usr/local/.claude"

reportResults