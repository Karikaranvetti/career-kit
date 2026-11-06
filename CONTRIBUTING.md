# Contributing

Thanks for helping. This kit gets better from real use: where onboarding confused you,
what the AI got wrong, what your role needed that wasn't here.

## The one rule: no personal data

This is the **template**. Your own filled-in copy (your profile, logs, CV, tracker) stays in
your own **private** repo. Before opening a pull request, check your diff contains no names,
emails, employers, salaries, CVs or logs. Examples must be made up.

## Good ways to help

- **Open an issue** after trying it: what you expected, what happened, which round or file.
  Use the "Feedback from using it" template.
- **Improve a question** in `onboarding/QUESTIONS.md` that confused you or missed something.
- **Add a module or example** for a role not covered well yet (QA, support, data, mobile…).
- **Test on your platform:** macOS and Windows (Git Bash) for `.claude/hooks/session-start.sh`,
  `tools/pack.sh` and `cv/build.sh`.
- **Try it with another AI tool** and improve `onboarding/PROMPT.md`.

## How

1. Fork, make a branch, change it.
2. Keep files short and plain; the AI reads them every session. `AGENTS.md` stays well under
   200 lines.
3. If you change a flow, update every file that describes it (`README.md`, `AGENTS.md`, the
   matching skill in `.claude/skills/`, `onboarding/PROMPT.md`) in the same pull request.
4. Shell scripts: run `bash -n` on them; they must never modify files they only report on.
5. Open a pull request saying what you changed and why, and how you tested it.

Be kind in issues and reviews. People using this are often in the middle of a hard career move.
