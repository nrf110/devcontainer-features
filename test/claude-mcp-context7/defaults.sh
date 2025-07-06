#!/bin/bash
set -e

source dev-container-features-test-lib

check "context7 mcp config exists" claude -p mcp get context7

reportResults