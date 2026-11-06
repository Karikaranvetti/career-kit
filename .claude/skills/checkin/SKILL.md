---
name: checkin
description: The two-minute daily check-in. Asks done / blocked / next, writes log/days/YYYY-MM-DD.md, replies in three lines. Use when they type /checkin, say "log today", "daily log", or tell you what they did today.
---

# Daily check-in

1. Read `me/rules.md` (Routine, How to work with me), `me/status.md`, and the most recent
   file in `log/days/`.
2. If they already said what they did in their message, use it. Otherwise ask the fields in
   `log/TEMPLATE-day.md` (default: done, blocked, next) in one short message.
3. Write `log/days/<today>.md` from the template, in their words. If the file exists, add to it.
4. Reply in **at most 3 lines**:
   - Anything to act on (a blocker you can help with, a slip versus `me/status.md`).
   - Tomorrow's one thing.
   - If something real happened (progress, a setback), one honest line about it, in the tone
     `me/rules.md` asks for.
5. If the last weekly review in `log/weeks/` is 7+ days old, add: "Weekly review is due: `/review`."
6. Save, following `me/rules.md` → AI guidance → Saving (`AGENTS.md` → Saving explains each mode).

Don't plan beyond the limits in `me/rules.md`. Keep it short: this has to stay a 2-minute habit.
In guide mode, still keep it short: no habit teaching here, that's for the weekly review.
