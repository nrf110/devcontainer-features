#!/bin/bash
set -e

source dev-container-features-test-lib

check "@playwright/mcp is installed" npm -g ls | grep @playwright/mcp

check "playwright mcp config exists" claude -p mcp get playwright

reportResults