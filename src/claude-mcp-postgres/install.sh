#!/bin/sh
set -e

cfg="{\"command\": \"npx\", \"args\": [\"postgres-mcp-server\"],\"env\": {\"DB_HOST\": \"${DB_HOST}\", \"DB_PORT\": \"${DB_PORT}\", \"DB_USER\": \"${DB_USER}\", \"DB_PASSWORD\": \"${DB_PASSWORD}\", \"DB_NAME\": \"${DB_NAME}\", \"DB_SSL\": \"${DB_SSL}\"}}"

tee "/usr/local/share/claude-mcp-postgres.sh" > /dev/null \
<< EOF
#!/bin/bash
set -e
npm i -g postgres-mcp-server@$VERSION
claude -p mcp add-json $NAME '$cfg'
EOF

chmod +x /usr/local/share/claude-mcp-postgres.sh
