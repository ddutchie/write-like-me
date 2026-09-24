#!/usr/bin/env bash
# Builds dist/me.zip for upload to claude.ai (Customize → Skills).
# The zip root must be the skill folder itself.
set -euo pipefail
cd "$(dirname "$0")/.."
mkdir -p dist
rm -f dist/me.zip
(cd skills && zip -rq ../dist/me.zip me -x '*.DS_Store' -x 'me/STYLE.md')
echo "Built dist/me.zip"
