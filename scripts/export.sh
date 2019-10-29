#!/bin/bash
cd .. && yarn build;

VERSION=$(node -pe 'JSON.parse(process.argv[1]).version' "$(cat package.json)")

cd .. &&
rsync -av --progress visual-studio-code $HOME/.vscode/extensions/dracula-italic-theme.theme-dracula-$VERSION --exclude .git

