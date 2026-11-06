#!/usr/bin/env bash
# Build the CV with Typst (https://typst.app, one small program: see cv/README.md).
#
#   ./build.sh                  build every variant  -> cv-a.pdf, cv-b.pdf, ...
#   ./build.sh a                build variant a only -> cv-a.pdf
#   ./build.sh a Acme_QAEngineer build variant a and archive it as
#                               sent/YYYY-MM-DD_Acme_QAEngineer.pdf (what that company got)
set -euo pipefail
cd "$(dirname "$0")"

command -v typst >/dev/null || { echo "typst not found: see cv/README.md, 'Install'"; exit 1; }

# Variants = the keys of the 'titles' dictionary in cv.typ.
ALL=$(sed -n '/^#let titles = (/,/^)/p' cv.typ | grep -oE '^\s*[a-z0-9_-]+:' | tr -d ' :')
VARIANTS=${1:-$ALL}

for v in $VARIANTS; do
  typst compile --input variant="$v" cv.typ "cv-$v.pdf"
  echo "built cv-$v.pdf"
done

if [ $# -ge 2 ]; then
  mkdir -p sent
  out="sent/$(date +%Y-%m-%d)_$2.pdf"
  cp "cv-$1.pdf" "$out"
  echo "archived $out"
fi

# Em dashes are a common sign of AI-written text. Warn, don't fail.
n=$(grep -v '^\s*//' cv.typ | grep -o '—' | wc -l || true)
[ "$n" -gt 0 ] && echo "note: $n em dash(es) in cv.typ; many readers see them as AI-written."
exit 0
