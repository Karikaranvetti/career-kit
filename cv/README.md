# CV module

One source file (`cv.typ`), several variants, one command to build. Tailoring a CV for a job
means changing a few words in **PART 1** and running `./build.sh`. No AI needed; an AI can
help, but it follows the same rules.

## Install Typst (once)

Typst is one small program. Pick one:
- macOS: `brew install typst`
- Windows: `winget install --id Typst.Typst`
- Linux / any: download from github.com/typst/typst/releases, or `cargo install typst-cli`

Check: `typst --version`. Live preview while editing: `typst watch cv.typ preview.pdf`.

Prefer another format? Onboarding round 7 asks. Markdown + Pandoc or Word work too; then
keep the same rules below and the same `sent/` archive.

## First time

1. Replace PART 2 (name, contact) and PART 4 (your jobs, education) with your own.
2. Set up your variants in PART 1: one key per variant in `titles` and `summary-first`
   (e.g. `a: "Backend Developer"`, `b: "Platform Engineer"`).
3. `./build.sh` and open the PDFs.

## Tailoring for one job (10 minutes)

1. **Pick the variant** whose title is closest to the job.
2. **Edit PART 1 only:**
   - `summary-rest`: move emphasis toward what the job asks for.
   - `skills`: put the job's top asks first, **only if true**.
   - `open-to`: remote or relocation, depending on the job.
   - Use the job's words where they're true ("CI/CD" if they say CI/CD; "SDET" if they say SDET).
     ATS keyword matching is literal.
3. **Move the most relevant bullet** to the top of your current job, if needed.
4. **Build and archive:** `./build.sh a Company_Role` → `sent/YYYY-MM-DD_Company_Role.pdf`.
5. **Keep or revert:** if the change is better for every job, keep it. If it was for this
   company only, undo it (`git checkout cv.typ`). The archived PDF keeps what they got.
6. Log it in `jobs/tracker.csv`.

## Rules (for you and for any AI helping)

- **Nothing invented.** Every line must survive ten minutes of questions from someone who
  knows the subject. Tailoring = reordering and rewording what's true, never adding.
- **Your part, not the team's.** "Built" means you built it. "Helped build", "led",
  "designed" are different claims. Use the right one.
- **Exact numbers.** "Two days to four hours" reads as measured; "much faster" reads as made up.
- **No AI tells:** "spearheaded", "leveraged", "passionate about", "proven track record",
  em dashes everywhere. The build warns on em dashes.
- **One column, plain text.** ATS tools read text in order; columns and icons scramble it.
- **Ragged right, no hyphenation.** Already set in PART 3.
- **Things never to claim** are listed in `me/rules.md` (onboarding round 7).
