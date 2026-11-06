#!/usr/bin/env bash
# Runs when a Claude Code session starts in this folder (.claude/settings.json → SessionStart).
# Whatever it prints is added to Claude's context, so the AI knows the date and how fresh
# the files are before the person types anything. It only reads files; it never changes them.
cd "${CLAUDE_PROJECT_DIR:-$(dirname "$0")/../..}" 2>/dev/null || exit 0

days_since() {  # $1 = YYYY-MM-DD; prints whole days since then, or nothing
  local s
  s=$(date -d "$1" +%s 2>/dev/null) || s=$(date -j -f %Y-%m-%d "$1" +%s 2>/dev/null) || return 0
  echo $(( ( $(date +%s) - s ) / 86400 ))
}

echo "career-kit session check (from .claude/hooks/session-start.sh)"
echo "- Today: $(date +%Y-%m-%d) ($(date +%A))"

if grep -q '<fill in' me/profile.md 2>/dev/null; then
  echo "- Onboarding is NOT done (me/profile.md has placeholders). Offer /onboard first."
  exit 0
fi

st=$(grep -oE 'Updated: [0-9]{4}-[0-9]{2}-[0-9]{2}' me/status.md 2>/dev/null | head -1 | cut -d' ' -f2)
if [ -n "$st" ]; then
  d=$(days_since "$st"); echo "- me/status.md updated $st (${d:-?} days ago)"
  [ -n "$d" ] && [ "$d" -gt 8 ] && echo "  → status is stale: suggest /review before anything else"
else
  echo "- me/status.md has no date yet: suggest /review"
fi

last=$(ls log/days/ 2>/dev/null | grep -E '^[0-9]{4}-[0-9]{2}-[0-9]{2}\.md$' | sort | tail -1)
if [ -n "$last" ]; then
  ld=${last%.md}; d=$(days_since "$ld"); echo "- Last daily log: $ld (${d:-?} days ago)"
  [ -n "$d" ] && [ "$d" -ge 3 ] && echo "  → no log for $d days: ask kindly what happened, then /checkin"
else
  echo "- No daily logs yet: suggest /checkin"
fi

wk=$(ls log/weeks/ 2>/dev/null | grep -E '\.md$' | sort | tail -1)
echo "- Last weekly review: ${wk:-none}"
grep -m1 -E '^\- \*\*Level:\*\*' me/rules.md 2>/dev/null | sed 's/^- /- AI guidance: /'
exit 0
