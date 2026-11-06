---
name: onboard
description: First-time setup of the career knowledge base. Interviews the person round by round from onboarding/QUESTIONS.md and writes each answer into its file. Use when they type /onboard, ask to set up or redo their profile, or want to switch on a module later.
---

# Onboard

1. Read `AGENTS.md`, then `onboarding/QUESTIONS.md` in full, including "For the AI running this".
2. Read `me/profile.md` and `me/rules.md`. If parts are already filled in, say which rounds are
   done and ask whether to continue from the first empty one or redo a specific round.
3. Ask which rounds to do now. Core is 0, 1, 2, 3, 9, 10; modules are 4–8. Default: core
   first, **always starting with round 0**: its answers (AI level, saving) decide how you run
   the rest. If the level is new or some, use guide mode from round 1 on (`AGENTS.md`).
   If they don't use git and choose a private git repo, walk them through it: `git init`,
   then creating a **private** repo on GitHub/GitLab and pushing. Explain each command in one line.
4. Run the rounds one at a time:
   - Ask the round's questions in one message. Keep the person's numbering.
   - Wait. Ask one follow-up if an answer is vague.
   - Edit the target file: replace the `<fill in>` placeholders with their words. Remove
     template lines they didn't answer instead of leaving placeholders, unless they want to
     come back to them (then mark `(revisit)`).
   - Show what you wrote in 3–6 lines and ask "anything wrong?" before the next round.
5. For a module round: tick the module under **Modules** in `me/rules.md`, and fill in that
   module's files (`learning/plan.md`, `cv/`, `jobs/`) as `QUESTIONS.md` says.
6. Finish with "After onboarding" in `QUESTIONS.md`.
7. Save the way round 0 chose (`AGENTS.md` → Saving). Push only if they set up a remote and
   asked for it.

Never invent facts about the person. An empty field is better than a guessed one.
