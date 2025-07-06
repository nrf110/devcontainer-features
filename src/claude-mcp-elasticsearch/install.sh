#!/bin/bash
set -e

node << EOF
import { writeFileSync } from 'fs';

const keys = ['ES_URL', 'ES_API_KEY', 'ES_USERNAME', 'ES_PASSWORD', 'ES_CA_CERT', 'ES_PATH_PREFIX', 'ES_VERSION', 'OTEL_LOG_LEVEL'];
const env = keys.reduce((acc, key) => ({
  ...acc,
  [key]: process.env[key],
}), {});
const json = JSON.stringify({
  command: 'npx',
  args: ['-y', '@elastic/mcp-server-elasticsearch'],
  env,
});
writeFileSync('/usr/local/share/es-mcp.json', json);
EOF

cfg=$(< /usr/local/share/es-mcp.json)

tee "/usr/local/share/claude-mcp-elasticsearch.sh" > /dev/null \
<< EOF
#!/bin/bash
set -e

npm i -g @elastic/mcp-server-elasticsearch@$VERSION
claude -p mcp add-json $NAME '$cfg'
EOF

chmod +x /usr/local/share/claude-mcp-elasticsearch.sh