# Using AI well: the basics

Ten minutes to read. If guide mode is on, the AI also teaches one of these habits a week, in
the order below, with an example from your own work.

## What an AI is, in practice

- It predicts a likely answer. Usually right, sometimes **confidently wrong**, and it sounds
  the same either way. How confident it sounds tells you nothing about whether it's right.
- It only knows what it was trained on (which can be months or years old) plus **what you
  give it**. It doesn't know you, your job or your goal unless it's in front of it. That's
  why this repo exists: `me/` is what you give it.
- It forgets. Each new chat starts empty unless the tool loads files for it (Claude Code does
  this here; in ChatGPT you upload `context-pack.md` to a Project).

## The habits (one a week in guide mode)

1. **Give context, not just a question.** "Fix my CV" gets a generic answer. "Here is my CV and
   the job ad; I'm a QA engineer moving to automation; keep it one page" gets a useful one.
   The files in `me/` do this for you.
2. **Ask how sure it is, and where it got that from.** "How sure are you? Which official doc
   says this?" Then open the doc. Official docs beat blogs; blogs beat the AI's memory.
3. **Check anything you'll act on.** Commands, numbers, dates, prices, laws, visa rules, salary
   figures. One wrong fact in an interview or a visa form costs more than five minutes of checking.
4. **Don't paste what you shouldn't.** Passwords, API keys, customer data, your employer's code
   or documents, other people's personal details. What you paste goes to the AI company.
5. **Ask it to argue with you.** "What's wrong with this plan?" or "What would a senior
   engineer criticise here?" It tends to agree with you unless you ask it not to.
6. **Make it show its working.** For anything technical: "Explain why, step by step." A wrong
   step is easy to spot; a wrong final answer isn't.
7. **Your words for your story.** CV lines, interview answers and design decisions should
   come from you. Let AI question and polish, not invent. You'll be asked about them by people
   who know the subject.
8. **Correct it, and write the correction down.** When it's wrong, say so with the reason.
   In this repo the correction goes into `me/rules.md`, so it isn't wrong the same way twice.
9. **Know when to stop.** If you've asked the same thing three ways and still aren't sure, the
   AI doesn't know either. Read the docs, try it yourself, or ask a person.
10. **Keep the files current.** Out-of-date files make the AI confidently wrong about *you*.
    The daily check-in and weekly review exist for this.

## Signs the AI is making it up

- Exact numbers, version names or quotes with no source, especially about recent things.
- A doc link that doesn't open, or opens a page that doesn't say what it claimed.
- An answer that changes when you ask "are you sure?". Neither version is reliable.
- It agrees with everything you say, including things you're unsure of.

## How this repo remembers (so you know what the AI can see)

```
me/rules.md, profile.md, status.md, decisions.md   read every session
log/days/ (last few), log/weeks/ (latest)          read every session
everything else                                    read only when the task needs it
private/                                           never read unless you ask; never in git
```
If something matters and isn't in those files, the AI doesn't know it. Tell it, and it writes
it down.
