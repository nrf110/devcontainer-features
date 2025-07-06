#!/bin/bash
set -e

echo "Activating feature 'claude-mcp-github'"

if [ -z "$GITHUB_PERSONAL_ACCESS_TOKEN" ]; then
  echo "GITHUB_PERSONAL_ACCESS_TOKEN is not set"
  exit 1
fi

tee "/usr/local/share/claude-mcp-github.sh" > /dev/null \
<< EOF
#!/bin/bash
set -e

claude -p mcp add --transport http $NAME '$URL' --header "Authorization: Bearer ${GITHUB_PERSONAL_ACCESS_TOKEN}"
EOF

chmod +x /usr/local/share/claude-mcp-github.sh