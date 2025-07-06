#!/bin/bash
set -e

echo "Activating feature 'claude-mcp-terraform'"

if ! command -v go &> /dev/null; then
  echo "Go needs to be installed first"
  exit 1
fi

cfg="{\"command\": \"terraform-mcp-server\", \"args\": [\"stdio\"]}"

tee "/usr/local/share/claude-mcp-terraform.sh" > /dev/null \
<< EOF
#!/bin/bash
set -e

go install github.com/hashicorp/terraform-mcp-server/cmd/terraform-mcp-server@$VERSION
claude -p mcp add-json $NAME '$cfg'
EOF

chmod +x /usr/local/share/claude-mcp-terraform.sh