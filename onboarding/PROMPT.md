# Using a chat AI without file access (ChatGPT, Gemini, Copilot…)

A chat AI can't open or save your files. So: **you bundle the files into one, the AI reads
it, and you copy its changes back.** Claude Code does all of this by itself; this page is for
everyone else.

## 1 · Onboarding (once)

Open a **new** chat, paste the block below, then paste the whole of `onboarding/QUESTIONS.md`.

```
You are going to interview me to set up my personal career knowledge base. The question
set is below. Rules:

- Go one round at a time, starting with round 0. Ask that round's questions, then wait.
- After each round, write the content for the file named in the round heading, in
  Markdown, using my words. Keep it short. Put each file in its own code block with the
  file path above it, so I can copy it into my files.
- Ask one follow-up if an answer is vague. Never invent facts about me. If I skip a
  question, leave it out.
- The examples in the questions are only examples. Don't push them.
- If my level in round 0 is "new" or "some": explain briefly why each round matters,
  and say how sure you are about any fact you give me.
- At the end, write me/status.md and the first entry for me/decisions.md, and tell me in
  5 lines what to do tomorrow.

Start with round 0.
```

Copy each file the AI gives you into your folder, replacing the template section it fills.
Check it says what you meant. The files are yours, not the AI's.

## 2 · Set up a ChatGPT Project (once, so you stop pasting)

A ChatGPT **Project** keeps your files and instructions together, and its chats remember
each other ([OpenAI: Projects](https://help.openai.com/en/articles/10169521-projects)).
Other tools have similar features (e.g. Gemini Gems, Claude Projects).

1. Run `./tools/pack.sh` in your folder (Windows: in Git Bash). It writes **one** file,
   `context-pack.md`, with your `me/` files, recent logs and modules. One file, because
   free plans allow only a few files per project.
2. Read `context-pack.md` once. Everything in it goes to the AI company, so check it
   against `me/rules.md` → Privacy.
3. In ChatGPT: create a Project (e.g. "career"), upload `context-pack.md`.
4. Paste this into the Project's **instructions**:

```
This project is my career knowledge base. The uploaded file context-pack.md holds my
files; each part starts with "===== FILE: <path> =====". Follow the AGENTS.md part as your
instructions, and me/rules.md above your own defaults. You cannot edit my files: when a
file should change, give me the full new section in a code block with the file path
above it. Commands: "check-in" = the daily check-in, "review" = the weekly review.
If the pack is more than 8 days old (date at the top), tell me to re-run tools/pack.sh
and re-upload it.
```

## 3 · Every day, and every week

- **Daily:** in the Project, start a chat with `check-in`. Copy the log file it gives you
  into `log/days/`.
- **Weekly:** start a chat with `review`. Copy the week file into `log/weeks/` and replace
  `me/status.md` with the new one. Then **re-run `./tools/pack.sh` and re-upload**
  `context-pack.md` (delete the old one in the Project). An uploaded file is a snapshot:
  it doesn't update when your files do.

No Project feature? Paste `context-pack.md` at the start of a new chat instead.
