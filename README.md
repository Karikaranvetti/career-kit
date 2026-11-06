# career-kit

A personal knowledge base for a software person (developer, support engineer, QA engineer,
or similar) who is working toward a career goal: a new role, a promotion, a move abroad, a
new skill.

## The problem it solves

A general AI chat starts from zero every time. You re-explain who you are, what you want,
what you did yesterday and what you must not do. The answers are generic because the AI
knows nothing about you.

This repo is the memory. You answer a set of questions once, then log a few lines a day.
Any AI that reads these files starts every session knowing your goal, your limits and
where you are. The more you use it, the less you have to explain, and the better the help.

You can also use it with no AI at all. Every file is plain text you can read and edit.

## Quick start

1. **Copy this template** into your own **private** repo (or a local folder). The template
   is public; your copy will hold your goals, maybe salary and job search. Keep it private.
2. **Run the onboarding** (about 30–45 minutes, can be split). Round 0 asks how comfortable
   you are with AI; if you're new to it, the AI switches on **guide mode** and teaches you
   to use it well as you go.
   - Claude Code: start it in this folder (`cd career-kit && claude`), type `/onboard`.
   - ChatGPT or another chat AI: follow `onboarding/PROMPT.md` (it also sets up a Project so
     you don't paste files every day).
   - No AI: open `onboarding/QUESTIONS.md` and fill in the files yourself.
3. **Every day, 2 minutes:** a check-in (`/checkin`, or write `log/days/YYYY-MM-DD.md` from
   `log/TEMPLATE-day.md`).
4. **Every week, 20 minutes:** a review (`/review`). The AI compares the week's logs with
   your goal, says what slipped, and rewrites `me/status.md`.
5. **New to AI?** Read `GUIDE-ai-basics.md` (10 minutes).

## How the AI remembers

There's no database. The memory is these files, and the AI reads a few short ones every time:

```
every session      me/rules.md → profile.md → status.md → decisions.md → last 3 day logs → last week
when needed        learning/, cv/, jobs/
never (unless asked)  private/, log/archive.md
weekly             7 day logs → 1 week summary → status.md REPLACED; old corrections archived
```

- **Claude Code** loads `CLAUDE.md` (which imports `AGENTS.md`) automatically, and a start-up
  check (`.claude/hooks/session-start.sh`) tells it today's date and how old your status and
  logs are, before you type anything. The first time, Claude Code asks whether you trust
  this folder. The check only reads files; it never changes anything.
- **Chat AIs** can't open files: `tools/pack.sh` bundles them into one `context-pack.md` you
  upload to a ChatGPT Project. Re-run it after each weekly review.
- **Saving** is set in onboarding: the AI commits for you, asks first, or reminds you.

## What's in here

| Path | What it is | Always on? |
|---|---|---|
| `AGENTS.md` | Instructions for any AI: what to read, in what order, and the rules for updating files. | yes |
| `me/profile.md` | Who you are and your goal, ranked. | yes |
| `me/rules.md` | Your limits, the "do not" list, how you want to be coached, privacy. | yes |
| `me/status.md` | Where you are now. Rewritten each week, never appended to. | yes |
| `me/decisions.md` | Decisions you made and why, dated. Stops the AI re-arguing them. | yes |
| `log/` | Daily check-ins and weekly reviews. | yes |
| `learning/` | Your study plan and one file per topic. | module |
| `cv/` | A CV you can tailor by editing a few words and running one command. | module |
| `jobs/` | Application tracker and job-search notes. | module |
| `onboarding/` | The question set, and the chat-AI setup (`PROMPT.md`). | setup |
| `GUIDE-ai-basics.md` | How to use AI well: ten habits, signs it's making things up. | yes |
| `tools/pack.sh` | Bundles your files into one `context-pack.md` for chat AIs. | chat AI users |
| `.claude/` | Claude Code: skills `/onboard` `/checkin` `/review`, the start-up check. | Claude Code users |
| `log/archive.md` | Old corrections and replaced decisions, kept out of the way. | yes |

Turn modules on or off in `me/rules.md` → **Modules**. Delete the folders you don't use.

## Why it works, and how it stops working

Context helps when it is **current and short**. Stale context misleads the AI, and long
context buries what matters. So:

- `me/status.md` is **replaced** every week, not added to.
- When a rule or plan changes, the file changes **the same day**.
- When the AI gets something wrong and you correct it, the correction goes into
  `me/rules.md` or `me/decisions.md` with the date and the reason. That is how the kit
  learns you. Corrections written down never have to be made twice.

## Privacy

You decide what goes in. Onboarding round 10 asks:
- Is your copy in git, and is that git private?
- Is the AI account yours or your employer's? If it's your employer's, keep the job
  search out of it.
- What must never be written down at all (salary, health, family)? Anything sensitive but
  useful can go in `private/`, which is in `.gitignore` and never leaves your machine.

Never put passwords, API keys or tokens in this repo.
