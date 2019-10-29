#!/bin/bash

# Up out of scripts
cd ..
npm install -yq
npm run build

VERSION=$(node -pe 'JSON.parse(process.argv[1]).version' "$(cat package.json)")

# Up out of repo
cd ..

EXTENSIONS_DIR="${HOME}/.vscode/extensions/dracula-italic-theme.theme-italic-dracula-${VERSION}"

rsync -av --progress visual-studio-code/. "$EXTENSIONS_DIR"  --exclude .git --exclude node_modules

