#!/bin/bash
set -e

source dev-container-features-test-lib

check "playwright is installed" npx playwright --version | grep "Version"