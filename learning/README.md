# Learning module

You choose **what** to learn and **who teaches** (an AI chat, a course, a book, docs, your own
research). This folder gives you the loop, so every topic ends with something you can show
and a list of what you got wrong.

```
learning/
├── plan.md             your topics, in order, with depth and how you'll check (onboarding round 4)
├── TEMPLATE-topic.md   copy for each new topic
└── topics/
    └── <n>-<topic>.md  one file per topic
```

## The loop, per topic

```
1. AIM       10 cold questions BEFORE studying. Most will be wrong. That's the point:
             now you know where to spend the time.
2. LEARN     from your source (plan.md says which). Read first, then get taught.
3. PRACTISE  build, run or break something real. Predict what will happen before you
             run it; a wrong prediction teaches the most.
4. CHECK     explain it out loud, from memory, as if in an interview. Then questions.
5. LOG       every mistake goes into the topic file under "Got wrong". That list is your
             revision sheet, not your notes.
6. CLOSE     when the check in plan.md passes. Update plan.md and log it.
```

## Using an AI as the teacher

Paste this, then your topic file (or the material you're studying), into a new chat:

```
Teach me <TOPIC>. About me: <role, years, what I already know>. My goal: <goal>.
- Start with 4 questions to find what I don't know. Mark my answers strictly:
  right / partly right / wrong. Never call a partly right answer correct.
- Then teach the gaps: the mechanism (how it really works) first, then an example,
  then what breaks if a piece is missing. Short sentences, diagrams in code blocks.
- Stop every few ideas and make me explain back. Don't move on until I get it right.
- Give me 3 plausible-sounding WRONG claims about this topic and ask me to catch them.
- If you are not sure of a fact, say so. Don't invent numbers or limits.
- End with 5 exam/interview-style questions, then a list of what I got wrong today.
```

Save the conversation, or at least the "what I got wrong" list, into the topic file.

## Why "catch the wrong claims"

An AI will tell you plausible wrong things with full confidence. Learning a topic deeply
enough to catch that is the skill that keeps your value as AI writes more of the work.
