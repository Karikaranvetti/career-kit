// CV: one source file, several variants, no AI needed.
// Build:   ./build.sh            (all variants)
//          ./build.sh a Acme_QA  (variant a, archived to sent/ for that application)
// Help:    cv/README.md
//
// Tailoring for a job = edit PART 1 only, build, send. Everything else stays put.

// =====================================================================
// PART 1 · CHANGE PER APPLICATION (title, summary, what comes first)
// =====================================================================

// Which variant to build. build.sh passes it; "a" if you run typst directly.
#let variant = sys.inputs.at("variant", default: "a")

// One entry per variant. Only the title and the first summary sentence change.
#let titles = (
  a: "QA Engineer",
  b: "Test Automation Engineer",
)
#let summary-first = (
  a: "QA engineer with 4 years testing web and mobile products in agile teams.",
  b: "Test automation engineer with 4 years building UI and API test suites.",
)
// The rest of the summary: 1–2 sentences. Move emphasis here for a specific job.
#let summary-rest = "Cut regression time from two days to four hours by automating the core flows. Looking for a team with strong engineers to learn from."

// "Open to remote", "Open to relocation (requires visa sponsorship)", or none().
#let open-to = "Open to remote"

// Skills, in the order you want them read. Put the job's top asks first (only if true).
#let skills = (
  ("Testing", "Test design, exploratory testing, regression, API testing"),
  ("Automation", "Playwright, Selenium, Postman / Newman"),
  ("Languages", "TypeScript, Python, SQL"),
  ("Tools", "Git, Jira, GitHub Actions, Docker (basic)"),
)

// =====================================================================
// PART 2 · YOUR DETAILS (change once)
// =====================================================================

#let name = "Your Name"
#let contact = (
  "City, Country",
  "you@example.com",
  "linkedin.com/in/you",
  "github.com/you",
)

// =====================================================================
// PART 3 · LAYOUT (rarely changed)
// =====================================================================

#set document(title: name + " - CV")
#set page(paper: "a4", margin: (x: 1.8cm, y: 1.5cm))
#set text(font: ("Libertinus Serif", "New Computer Modern"), size: 10.5pt, hyphenate: false, lang: "en")
#set par(justify: false, leading: 0.6em)
#set list(indent: 0.4em, body-indent: 0.5em, spacing: 0.55em)

#let section(t) = {
  v(9pt)
  text(size: 11pt, weight: "bold", tracking: 0.6pt, upper(t))
  v(-7pt)
  line(length: 100%, stroke: 0.5pt)
  v(1pt)
}

#let job(title, org, place, dates) = {
  v(4pt)
  grid(
    columns: (1fr, auto),
    [*#title* · #org · #place], align(right, dates),
  )
  v(-2pt)
}

// =====================================================================
// PART 4 · CONTENT (edit when your experience changes)
// =====================================================================

#align(center)[
  #text(size: 20pt, weight: "bold", name) \
  #v(-2pt)
  #text(size: 12pt, titles.at(variant)) \
  #v(-2pt)
  #contact.join("  ·  ")
  #if open-to != none [ \ _ #open-to _ ]
]

#section("Summary")
#summary-first.at(variant) #summary-rest

#section("Experience")

#job("QA Engineer", "Example Company", "City", "Jan 2023 – Present")
- Automated the checkout and login regression suite in Playwright (180 tests), cutting a
  two-day manual regression to four hours per release.
- Wrote API tests in Postman and ran them in the CI pipeline on every pull request; caught
  23 breaking API changes before release in 2024.
- Write a bullet as: what you did, how, and what changed. A number if you have one.

#job("Junior QA Engineer", "Previous Company", "City", "Jun 2021 – Dec 2022")
- Ran exploratory and regression testing for a mobile banking app across 12 devices.
- Keep older roles short: 2–3 bullets.

#section("Skills")
#for (k, v) in skills [
  *#k:* #v \
]

#section("Education")
#job("BSc Computer Science", "Example University", "City", "2017 – 2021")

// Optional sections: remove the /* */ to show one.
/*
#section("Projects")
- *Project name:* one line on what it does and what you built. github.com/you/project
*/

/*
#section("Certifications")
- ISTQB Foundation Level, 2022
*/
