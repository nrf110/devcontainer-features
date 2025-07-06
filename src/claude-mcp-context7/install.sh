#!/bin/bash
set -e

echo "Activating feature 'claude-mcp-context7'"

tee "/usr/local/share/claude-mcp-context7.sh" > /dev/null \
<< EOF
#!/bin/bash
set -e

claude -p mcp add --transport http $NAME '$URL'
EOF

chmod +x /usr/local/share/claude-mcp-context7.sh