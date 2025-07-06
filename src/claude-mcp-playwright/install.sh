#!/bin/bash
set -e

echo "Activating feature 'claude-mcp-playwright'"

if ! command -v npm &> /dev/null; then
  echo "Node.js and NPM need to be installed first"
  exit 1
fi

tee "/usr/local/share/claude-mcp-playwright.sh" > /dev/null \
<< EOF
#!/bin/bash
set -e

npm i -g @playwright/mcp@$VERSION
claude -p mcp add-json $NAME '{"command": "npx", "args": ["@playwright/mcp@$VERSION"]}'
EOF

chmod +x /usr/local/share/claude-mcp-playwright.sh