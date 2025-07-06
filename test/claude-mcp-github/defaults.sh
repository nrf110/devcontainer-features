#!/bin/bash
set -e

source dev-container-features-test-lib

check "github mcp config exists" claude -p mcp get github

reportResults