#!/usr/bin/env bash
# Zip the claude.ai edition of the skill for upload as a custom skill.
# Usage: ./build-skill.sh   -> writes claude-ai/job-search.zip
set -euo pipefail
cd "$(dirname "$0")"
cp PROFILE-TEMPLATE.md skill/job-search/references/profile-template.md
cd skill
rm -f ../job-search.zip
zip -qr ../job-search.zip job-search -x '*.DS_Store'
echo "wrote $(cd .. && pwd)/job-search.zip"
