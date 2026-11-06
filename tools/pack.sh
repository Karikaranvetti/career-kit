#!/usr/bin/env bash
# Bundle your context into ONE file, context-pack.md, for a chat AI without file access
# (ChatGPT, Gemini…). Upload it to a ChatGPT Project, or paste it into a new chat.
# One file because free plans limit how many files a project can hold.
# Run again whenever the files change (at least after each weekly review).
#   ./tools/pack.sh            → context-pack.md
# Windows: run it in Git Bash. Never includes private/.
set -euo pipefail
cd "$(dirname "$0")/.."
out=context-pack.md

add() {  # add <file>: append a file under its own heading, if it exists
  [ -f "$1" ] || return 0
  printf '\n\n===== FILE: %s =====\n\n' "$1" >> "$out"
  cat "$1" >> "$out"
}

{
  echo "# Context pack, made $(date +%Y-%m-%d)"
  echo
  echo "My career knowledge base, bundled. Each part starts with '===== FILE: <path> ====='."
  echo "Read me/rules.md first: it overrides your defaults. When you suggest a change to a"
  echo "file, give the whole new section in a code block with the file path above it, so I"
  echo "can copy it back. You cannot edit my files yourself."
} > "$out"

for f in AGENTS.md me/rules.md me/profile.md me/status.md me/decisions.md; do add "$f"; done
for f in $(ls log/days/ 2>/dev/null | grep -E '^[0-9-]+\.md$' | sort | tail -7); do add "log/days/$f"; done
w=$(ls log/weeks/ 2>/dev/null | grep -E '\.md$' | sort | tail -1 || true); [ -n "$w" ] && add "log/weeks/$w"
add learning/plan.md
add jobs/README.md
if [ -f jobs/tracker.csv ]; then
  printf '\n\n===== FILE: jobs/tracker.csv (header + last 30 rows) =====\n\n' >> "$out"
  { head -1 jobs/tracker.csv; tail -n +2 jobs/tracker.csv | tail -30; } >> "$out"
fi

echo "wrote $out ($(wc -l < "$out") lines)."
echo "Before uploading: check it against me/rules.md → Privacy. Everything in it goes to the AI company."
