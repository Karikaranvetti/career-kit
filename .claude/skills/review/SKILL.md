---
name: review
description: The weekly review. Reads the week's logs against the goal and measures, writes log/weeks/YYYY-Www.md, decides what happens about slips, and rewrites me/status.md. Use when they type /review, ask for a weekly review, or ask "how am I doing?".
---

# Weekly review

1. Read `me/rules.md`, `me/profile.md`, `me/status.md`, `me/decisions.md`, every file in
   `log/days/` since the last review, and the latest file in `log/weeks/`. If modules are on,
   also read `jobs/tracker.csv` and `learning/plan.md`.
2. Check today's date. Count days to the goal date in `me/profile.md`.
3. Write `log/weeks/<YYYY-Www>.md` from `log/TEMPLATE-week.md`. Facts and numbers from the
   logs; don't fill gaps by guessing. If days are missing, say how many.
4. **Decide** about each slip, as `me/rules.md` → "When I'm behind" says. Cut scope before
   adding hours. Never break a limit. Add plan-changing decisions to `me/decisions.md`.
5. **Rewrite** `me/status.md` completely: date, where they are, max 3 focus items, measures,
   slipped + decision, open questions. Don't append.
6. **Keep files short** (`AGENTS.md` → Size): Corrections log in `me/rules.md` at most 10
   entries, older ones turned into plain rules and moved to `log/archive.md`; replaced
   decisions moved from `me/decisions.md` to `log/archive.md`. Say in one line what you moved.
7. **Guide mode** (Level new/some in `me/rules.md`): teach the next habit from
   `GUIDE-ai-basics.md` not yet under "AI habits taught so far", in 3–4 lines, with an example
   from their week. Add it to that list.
8. Reply with: the 3 focus items, the one thing that slipped most and what happens now, one
   specific line on real progress (if there was any), and the habit (guide mode). Tone from
   `me/rules.md`.
9. Ask: "Anything here wrong?" If they correct you, fix the files and add the correction to
   `me/rules.md` → Corrections log.
10. Save, following `me/rules.md` → Saving. If they use a chat AI too, remind them:
    "re-run `./tools/pack.sh` and re-upload `context-pack.md`."
