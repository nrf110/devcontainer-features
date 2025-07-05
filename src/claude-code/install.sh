#!/bin/bash
set -e

echo "Activating feature 'claudecode'"

if ! command -v npm &> /dev/null; then
  echo "Node.js and NPM need to be installed first"
  exit 1
fi

echo "The effective dev container remoteUser is '$_REMOTE_USER'"
echo "The effective dev container remoteUser's home directory is '$_REMOTE_USER_HOME'"

echo "The effective dev container containerUser is '$_CONTAINER_USER'"
echo "The effective dev container containerUser's home directory is '$_CONTAINER_USER_HOME'"

CONFIG_DIR=${CONFIG_DIR:-$_REMOTE_USER_HOME/.claude}
echo "Creating Claude Code config directory at $CONFIG_DIR"
mkdir -p $CONFIG_DIR && chown -R $_REMOTE_USER:$_REMOTE_USER $CONFIG_DIR

echo "Installing Claude Code"

npm i -g @anthropic-ai/claude-code@$VERSION