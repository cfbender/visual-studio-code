#!/bin/bash
cd ..
npm install -yq
npm run build

VERSION=$(node -pe 'JSON.parse(process.argv[1]).version' "$(cat package.json)")

cd ..
rsync -av --progress visual-studio-code/. $HOME/.vscode/extensions/dracula-italic-theme.theme-italic-dracula-$VERSION --exclude .git --exclude node_modules

