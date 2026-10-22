#!/usr/bin/env bash
# Render a Markdown prep document to a standalone HTML twin with the kit stylesheet.
# Usage: render-html.sh path/to/doc.md [more.md ...]
# Output: path/to/doc.html next to each input.
# Requires pandoc (https://pandoc.org). If pandoc is missing, prints install hints and exits 2,
# so the calling skill can fall back to writing the HTML by hand.
set -euo pipefail

HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CSS="$HERE/../assets/prep-style.css"

if ! command -v pandoc >/dev/null 2>&1; then
  echo "pandoc not found. Install with: brew install pandoc  (macOS) | sudo apt install pandoc (Debian/Ubuntu) | winget install pandoc (Windows)" >&2
  exit 2
fi

if [ "$#" -eq 0 ]; then
  echo "Usage: $0 file.md [file2.md ...]" >&2
  exit 1
fi

for md in "$@"; do
  out="${md%.md}.html"
  title="$(grep -m1 '^# ' "$md" | sed 's/^# //' || true)"
  [ -z "$title" ] && title="$(basename "${md%.md}")"
  pandoc "$md" -t html -s --metadata title="$title" --css "$CSS" --embed-resources -o "$out" 2>/dev/null \
    || pandoc "$md" -t html -s --metadata title="$title" -H <(printf '<style>\n%s\n</style>\n' "$(cat "$CSS")") -o "$out"
  echo "rendered $out"
done
