// Resume — Timothy Waldin
// Compile: typst compile resume.typ

#set page(paper: "us-letter", margin: (top: 0.4in, bottom: 0.4in, left: 0.5in, right: 0.5in))
#set text(size: 10pt)
#set par(leading: 0.5em, justify: false, spacing: 0.65em)
#set list(indent: 0pt, body-indent: 6pt, spacing: 3pt)

#let section(title) = {
  v(4pt)
  text(size: 11pt, weight: "bold", tracking: 0.5pt)[#upper(title)]
  v(-6pt)
  line(length: 100%, stroke: 0.5pt)
  v(2pt)
}

#let entry(l, r) = {
  grid(
    columns: (1fr, auto),
    l, r,
  )
}

// ===== HEADER =====
#align(center)[
  #text(size: 22pt, weight: "bold")[Timothy Waldin]
  #v(-2pt)
  San Francisco, CA |
  #link("mailto:timothy@waldin.net")[timothy\@waldin.net] |
  (415) 676-9427 \
  #link("https://linkedin.com/in/twaldin")[linkedin.com/in/twaldin] |
  #link("https://github.com/twaldin")[github.com/twaldin] |
  #link("https://x.com/twaldin")[x.com/twaldin] |
  #link("https://tim.waldin.net")[tim.waldin.net]
  #v(2pt)
  Software engineer, Reliability \@ Lindy.ai — agent evals, prompt optimization, OSS coding-agent suite (#link("https://github.com/twaldin/harness")[harness], #link("https://github.com/twaldin/hone")[hone], #link("https://github.com/twaldin/flt")[flt], #link("https://github.com/twaldin/agentelo")[agentelo])
]

// ===== EXPERIENCE =====
#section("Experience")

#entry(
  [*Software Engineer* | Lindy.ai — Reliability Team],
  [*May 2026 -- Present*],
)
- Shipped Online Scoring: evaluation system reading and grading millions of production agent traces per week with LLM judges orchestrated by Temporal workflows
- Implemented GEPA (evolutionary prompt optimization) in production systems handling thousands of user agents, searching for Pareto-optimal prompts over hundreds of evals

// ===== OPEN SOURCE =====
#section("Open Source")

#entry(
  [*Agentic Engineering Suite* #h(4pt) #text(size: 9pt, style: "italic")[TypeScript, Python, Bun, tmux, GEPA] #h(4pt) #link("https://github.com/twaldin")[github.com/twaldin]],
  [*2025 -- Present*],
)
- *hone:* GEPA-based prompt optimizer that drives coding-CLI subscriptions through `harness` as its mutator instead of paid API keys; took Claude Haiku 4.5 from 6/9 to 8/9 solved (65% #sym.arrow.r 85%, no regressions) on a held-out GitHub bug set, for \~\$1 in mutator tokens
- *AgentElo:* pairwise Bradley-Terry (Elo-style) leaderboard ranking 148 agents across 6 harnesses on real GitHub PRs — \~1B tokens, \$642 spend, 3.5K verified runs. Read-only baseline at #link("https://tim.waldin.net/agentelo")[tim.waldin.net/agentelo]. CLI runs locally to rank your agent against the bundled snapshot
- *harness:* extracted the multi-CLI adapter layer into a published Python (`harness-cli`) and TypeScript (`@twaldin/harness-ts`) library covering 13 coding CLIs, with a shared test-fixture suite enforcing identical behavior across both implementations
- *flt:* multi-agent orchestrator — generalized my tmux-orchestrator + claudecord prototypes to 6 coding CLIs; raw-ANSI TUI with damage-tracked screen buffer, vim keybinds, inter-agent inbox, git-worktree isolation. Published as `@twaldin/flt-cli` on npm
- *current focus:* ground-up hone rewrite — self-optimizing agent harness with a trusted eval kernel (sandboxed Docker broker, metered LLM proxy, pre-registered promotion gates) and a fully mutable optimizer loop; plus monoagent (pre-release)

// ===== PROJECTS =====
#section("Projects")

#entry(
  [*CS2 Trade-Up Bot* #h(4pt) #text(size: 9pt, style: "italic")[TypeScript, React, Express, PostgreSQL, Redis] #h(4pt) #link("https://tradeupbot.app")[tradeupbot.app]],
  [*2025 -- Present*],
)
- Full-stack market arbitrage platform analyzing profitable CS2 trade-up contracts across 3 marketplaces in real time with 100+ daily active users
- Discovery engine evaluating 100,000+ listing combinations per cycle with Steam OpenID auth, Stripe subscriptions, Cloudflare Turnstile, real-time WebSocket feeds, 17-currency display

#v(2pt)
#entry(
  [*term-site* #h(4pt) #text(size: 9pt, style: "italic")[Next.js, Docker, Socket.IO, xterm.js] #h(4pt) #link("https://tim.waldin.net")[tim.waldin.net]],
  [*2025*],
)
- Terminal-based portfolio where visitors explore projects inside isolated Docker containers through a browser shell; URL paths deep-link to shell commands (/blog/\<slug\>, /projects/\<name\>)

#v(2pt)
#entry(
  [*StudySpot* #h(4pt) #text(size: 9pt, style: "italic")[Next.js, Cloudflare Workers, pgvector, Claude API] #h(4pt) #link("https://studyspot.us")[studyspot.us]],
  [*2025*],
)
- Co-founded AI study platform using RAG + Claude to answer questions from uploaded course documents or Canvas API import; pgvector semantic search, streaming responses, auto-generated flashcards and quizzes

// ===== TECHNICAL SKILLS =====
#section("Technical Skills")
#grid(
  columns: (85pt, 1fr),
  row-gutter: 4pt,
  [*Languages:*], [TypeScript, JavaScript, Python, C, Shell (Bash, Zsh)],
  [*Frameworks:*], [Node.js, React, Next.js, Express, REST APIs, Tailwind, Socket.IO, shadcn/ui],
  [*Tools:*], [Git, CI/CD, Docker, Temporal, SQL (PostgreSQL, pgvector, SQLite), Redis, nginx, tmux, Cloudflare Workers, Bun, uv],
  [*AI:*], [agent evals and benchmarking, prompt optimization (GEPA, DSPy), LLM-as-judge pipelines, RAG],
)

// ===== EDUCATION =====
#section("Education")

#entry(
  [*Purdue University* | Polytechnic Institute],
  [*Aug 2024 -- Present*],
)
B.S. Web Programming and Design (on leave of absence since May 2026)

#v(2pt)
#text(size: 9.5pt)[*Leadership:* Founded high school robotics team; competed at FIRST Robotics Competition (FRC) World Championships (2#sym.times)]
