#!/bin/bash
set -e

echo "Activating feature 'playwright'"

if ! command -v npm &> /dev/null; then
  echo "Node.js and NPM need to be installed first"
  exit 1
fi

npx playwright install-deps

tee "/usr/local/share/playwright.sh" > /dev/null \
<< EOF
#!/bin/bash
set -e
npx playwright install
EOF

chmod +x /usr/local/share/playwright.sh
