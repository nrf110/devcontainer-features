#!/bin/bash
set -e

source dev-container-features-test-lib

check "@elastic/mcp-server-elasticsearch is installed" npm -g ls | grep @elastic/mcp-server-elasticsearch

check "elasticsearch mcp config exists" claude -p mcp get elasticsearch

reportResults