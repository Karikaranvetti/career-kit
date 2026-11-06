# Onboarding: the question set

Eleven rounds (0–10). Each answer goes into one file, so it never has to be asked again.
Rounds 0–3 and 9–10 are the core and should be done first. The rest switch on modules; skip
any you don't need, and come back later.

Time: about 30–45 minutes. It can be split across days: round by round is fine.

## For the AI running this

- **One round at a time.** Ask the round's questions together, wait for the answers, write
  them to the file, show the person what you wrote in 3–6 lines, ask "anything wrong?",
  then move on.
- **Use their words.** Short is fine. Don't polish their goal into something they didn't say.
- **Follow up on vague answers once.** "Better job" → "better how: pay, learning, remote,
  title?" If still vague, write it as it is and mark it `(revisit)`.
- **Never guess.** An empty answer is better than an invented one.
- **The examples are only examples.** Don't push them.
- **Ask for numbered answers** ("1. … 2. …"). If something they write doesn't clearly answer
  one question, ask once which question it belongs to. Don't file it under a guess.
- **A CV can arrive at any round.** People often share it in round 1. If they do: read it,
  then check it's theirs (name on it vs who they said they are; if it doesn't match, ask
  before using any of it). Use it to pre-fill rounds 1 and 7, show what you took and confirm
  each part, and still ask "what changed" and "which part was yours", because a CV never
  says that. Never copy phone numbers, emails or addresses into `me/`; the CV module holds
  contact details only in `cv/cv.typ`.

---

## Round 0 · You and AI → `me/rules.md` (AI guidance)

Asked first, because the answers change how the AI behaves in every later round.

1. Which AI tools do you use, and for what? (e.g. ChatGPT for questions, Claude Code for
   files, Copilot in the editor, none yet)
2. How comfortable are you with AI? Pick one:
   - **new:** I've used a chat a few times
   - **some:** I use it most weeks, but I'm not sure when to trust it
   - **confident:** I use it daily and I check what it tells me
3. Has an AI ever told you something wrong with full confidence? Did you notice at the time?
   (Any answer is fine. It tells the AI how much checking to teach.)
4. **Whose laptop and whose AI account is this?** Your own, someone else's, or your
   employer's? If it isn't yours: your goals, CV and job search will sit on their machine
   and in their account. Is that OK with both of you? (Often the better answer is to set
   this up on your own laptop and account.)
5. Do you use git? (yes / a little / no / what's git?)
6. How should your work be saved? Pick one:
   - **auto:** the AI commits after each check-in and review (needs git)
   - **ask:** the AI asks "save this?" each time
   - **manual:** I save or commit myself
   If you don't use git, the AI explains the options (a private git repo, or a synced folder
   such as a cloud drive) and you choose. Keeping files on one laptop with no copy is the
   one bad answer: one lost laptop loses everything.

*Before saving anything (for the AI):* if the laptop or the git identity isn't theirs (check
`git config user.name` and `user.email`), set their own name and email **for this folder
only** (`git config user.name "…"` and `git config user.email "…"`, without `--global`), so
saves go under their name. If they'd rather not give an email, don't save until they decide.
If the AI account is an employer's, say plainly that the employer may be able to see it,
and let them decide.

*How the AI uses this:* **new** and **some** switch on **guide mode** (see `AGENTS.md`): the AI
explains what it's doing and why, says how sure it is, and teaches one AI habit a week from
`GUIDE-ai-basics.md`. **confident** switches it off. Say "change my level" any time.

## Round 1 · You → `me/profile.md` (About me)

1. What do you do now? (role, e.g. backend developer, L2 support engineer, manual QA, test automation)
2. How many years, and in what kinds of companies (product, service/outsourcing, startup, bank…)?
3. Where are you based, and are you working now, between jobs, or studying?
4. What are you strongest at? Name 3–5 things you'd be happy to be tested on.
5. What are the gaps you already know about?
6. Two or three pieces of work you're proud of. What changed because of them? Any numbers
   (time saved, bugs caught, tickets reduced, cost, users)? Which part was yours, and which
   was the team's?

*Why question 6: your strongest CV lines and interview stories come from here, and the
"which part was yours" answer keeps them honest under questioning.*

## Round 2 · Goal → `me/profile.md` (Goal)

1. In one sentence, what do you want? (e.g. "move from manual QA to automation", "a remote
   backend job paid in USD", "senior support → SRE", "a job in Germany with a visa")
2. By when? Is there a hard date (contract end, notice period, visa, savings running out)?
3. Rank what matters: pay, currency, learning / good seniors, remote, location, title, stability,
   work-life balance, visa. **Top 3, in order.**
4. Any hard requirements? Things that rule a job out no matter what (e.g. "no night shifts",
   "my partner must be able to work there", "no relocation").
5. Is there a second track? (e.g. remote OR relocation; promotion here OR a new job)
6. How will you know you got there? What does "done" look like?

## Round 3 · Routine and limits → `me/rules.md` (Limits, Routine)

1. When can you work on this? Days and times, realistically, in a normal week.
2. What is the maximum? Hours you will **not** go past, even when behind.
3. What must not be traded away? (sleep, exercise, family time, prayer, health, a side job…)
4. Anything in your life the plan has to fit around? (commute, travel, kids, shift work, exams)
5. What does a bad day look like, and what's the minimum you'll still do on one?

*Why: a plan that ignores your life fails in week two. These become the "do not" list.*

## Round 4 · Learning → `learning/plan.md` (module: learning)

1. What do you need to learn for the goal? (a cloud, a language, a test framework, system
   design, networking, a certification, interview algorithms…)
2. Is there an exam or certificate? Is it the goal, or a way to show the skill?
3. Who or what teaches you? (an AI chat: which one · a course · a book · official docs ·
   your own research · a mentor). Can be a mix.
4. How do you learn best? (reading first, video, building something, being questioned, teaching back)
5. How deep? Enough to pass, enough to work alone, or deep enough to catch an AI being wrong?
6. Will you do hands-on practice? Where? (a laptop, a free cloud tier, a test environment)
   Any budget limit?
7. How will you check you really learned it? (practice exam score, explain it out loud,
   build something, a mock interview)

## Round 5 · Logging → `log/TEMPLATE-day.md` (adjust it)

1. How often will you log? (daily is best; 3 lines takes 2 minutes)
2. What do you want to track each day? Default: **done · blocked · next**. Add anything
   useful: hours studied, applications sent, mood, energy, sleep.
3. Where will you write it? (this repo, a notes app you paste in later, voice notes typed up)
4. What day and time for the weekly review?

## Round 6 · Progress → `me/status.md` (Measures)

1. Pick 2–4 numbers that show you're moving. Examples:
   - topics closed, practice-exam score, hours studied per week
   - applications per week, replies, interviews, offers
   - pull requests merged, a project shipped, mock interview scores
2. A target for each, per week or per month.
3. If you fall behind, what happens? (cut scope, move the date, ask for help: decide now,
   not in the moment)

## Round 7 · CV → `cv/` (module: cv)

1. Do you want the CV module? (a CV you tailor by changing a few words and running one command)
2. Paste or attach your current CV, or list: jobs with dates, education, skills, the work
   from round 1 question 6.
3. Which format? **Typst** (default here: one small program, one command, no AI needed),
   Markdown → PDF with Pandoc, LaTeX, or Word / Google Docs (then this module only keeps the text).
4. Do you need variants? (e.g. "Backend Developer" vs "Platform Engineer"; "QA Engineer" vs
   "SDET"). What changes between them: title, summary, order of skills?
5. Anything that must never be claimed? (a tool used once, a team's work, a cert not passed yet)

## Round 8 · Job search → `jobs/` (module: jobs)

1. Do you want the jobs module?
2. Where will you look? (LinkedIn, job boards, company career pages, recruiters, referrals)
3. What makes a role worth applying to? Write 3–5 yes/no checks (e.g. "remote from my
   country?", "years asked within 2 of mine?", "core of the job is my strengths?").
4. How many applications a week, and when?
5. What else should the tracker record? (salary range, visa answer, referral, recruiter name)
6. Things you'll say the same way every time: notice period, availability, salary
   expectation, work rights. (If salary is sensitive, put it in `private/`.)

## Round 9 · Coaching → `me/rules.md` (How to work with me)

1. How should the AI talk to you? (push hard / steady and encouraging / just facts)
2. When you're wrong, how should it say so? (straight away and plainly is usually best)
3. When you fall behind, should it decide what to cut, or give you options?
4. Which things do **you** want to write yourself, with the AI only reviewing? (e.g. your
   project design, interview answers, cover letters)
5. Anything that helps you keep going? (a philosophy or faith practice, a reason you wrote
   down, a person you're doing it for). Should the AI bring it up, and how often?

## Round 10 · Privacy and setup → `me/rules.md` (Privacy, Setup)

1. Round 0 asked whose laptop and AI account this is. Anything to add? (If an employer's
   account: keep the job search out of it, and never use a work email in this repo.)
2. Is this repo in git? Private? Pushed anywhere (a **private** GitHub/GitLab repo is a good
   backup)? Which devices?
3. What must **never** be written in these files? What is sensitive but useful (goes in
   `private/`, which git ignores)?
4. If you use a chat AI such as ChatGPT: everything you paste or upload is sent to that
   company. Is that fine for everything in `me/`, or should some of it stay out?
5. Will more than one AI session work in this folder at once? (if yes: each session edits only
   its own files; see `me/rules.md` → Setup)

---

## After onboarding

The AI:
1. Fills in `me/status.md`: the goal, this week's focus, the measures from round 6 at zero.
2. Sets **Modules** in `me/rules.md` to what was switched on. Deletes nothing; tells the
   person which folders they can delete.
3. Writes the first entry in `me/decisions.md`: "Onboarding done", with the top-3 ranking.
4. Saves the work the way round 0 chose (commit, ask, or tell them to save).
5. Tells them, in 5 lines, what to do tomorrow and how the daily check-in works.
6. In guide mode: points them to `GUIDE-ai-basics.md` and says to read it this week (10 minutes).
