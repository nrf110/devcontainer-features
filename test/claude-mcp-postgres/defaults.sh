#!/bin/bash
set -e

source dev-container-features-test-lib

check "postgres-mcp-server is installed" npm -g ls | grep postgres-mcp-server

check "postgres mcp config exists" claude -p mcp get postgres

reportResults