#!/bin/bash
set -e

source dev-container-features-test-lib

check "installed claude version is 1.0.0" claude -p -v | grep '1.0.0'

reportResults