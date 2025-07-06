#!/bin/bash
set -e

source dev-container-features-test-lib

check "terraform-mcp-server is installed" command -v terraform-mcp-server

check "terraform mcp config exists" claude -p mcp get terraform

reportResults