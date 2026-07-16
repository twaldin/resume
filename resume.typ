// Resume — Timothy Waldin
// Compile: typst compile resume.typ

#set page(paper: "us-letter", margin: (top: 0.4in, bottom: 0.4in, left: 0.5in, right: 0.5in))
#set text(size: 10pt)
#set par(leading: 0.5em, justify: false)
#set list(indent: 0pt, body-indent: 6pt, spacing: 3pt)

#let section(title) = {
  v(6pt)
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
  Software engineer for AI agents — evals, prompt optimization, open-source agent tooling (harness, hone, flt, agentelo)
]

// ===== EXPERIENCE =====
#section("Experience")

#entry(
  [*Software Engineer* | Lindy.ai — Agents team],
  [*May 2026 -- Present*],
)
- Shipped Online Scoring: evaluation system reading and grading millions of production agent traces per week with LLM judges orchestrated by Temporal workflows
- Implemented GEPA prompt optimization in production systems handling thousands of user agents

// ===== PROJECTS =====
#section("Projects")

#entry(
  [*Agentic Engineering Suite* #h(4pt) #text(size: 9pt, style: "italic")[TypeScript, Python, Bun, tmux, GEPA] #h(4pt) #link("https://github.com/twaldin")[github.com/twaldin]],
  [*2025 -- Present*],
)
- *hone:* GEPA-based prompt optimizer that drives coding-CLI subscriptions through `harness` as its mutator instead of paid API keys; took Claude Haiku 4.5 from 6/9 to 8/9 solved (65% #sym.arrow.r 85%, no regressions) on a held-out GitHub bug set, for \~\$1 in mutator tokens
- *AgentElo:* pairwise Bradley-Terry leaderboard ranking 148 agents across 6 harnesses on real GitHub PRs — \~1B tokens, \$642 spend, 3.5K verified runs. Read-only baseline at #link("https://tim.waldin.net/agentelo")[tim.waldin.net/agentelo]. CLI now runs locally to rank your agent against the bundled snapshot (public submissions closed after Stanford's Terminal-Bench 2.0 + Harbor shipped equivalent hosted infra)
- *harness:* extracted the multi-CLI adapter layer into a published Python (`harness-cli`) and TypeScript (`@twaldin/harness-ts`) library covering 13 coding CLIs with byte-level fixture parity between the two implementations
- *flt:* multi-agent orchestrator — generalized my tmux-orchestrator + claudecord prototypes to 6 coding CLIs; raw-ANSI TUI with damage-tracked screen buffer, vim keybinds, inter-agent inbox, git-worktree isolation. Published as `@twaldin/flt-cli` on npm
- *harness-bench:* current focus — benchmark the *scaffold* not the model by holding the model fixed and swapping the harness across SWE-bench Live and Terminal-Bench 2.0

#v(2pt)
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
- Co-founded AI study platform using RAG + Claude to answer questions from uploaded course materials; pgvector semantic search, streaming responses, auto-generated flashcards and quizzes

// ===== TECHNICAL SKILLS =====
#section("Technical Skills")
#grid(
  columns: (85pt, 1fr),
  row-gutter: 4pt,
  [*Languages:*], [TypeScript, JavaScript, Python, C],
  [*Frameworks:*], [React, Next.js, Node.js, Express, Tailwind, Socket.IO, shadcn/ui],
  [*Tools:*], [Git, Docker, PostgreSQL, SQLite, Redis, nginx, Cloudflare Workers, Vercel, Bun, uv],
  [*AI:*], [GEPA, DSPy, ACE; Bradley-Terry ranking; SWE-bench Live, Terminal-Bench 2.0; Temporal; agent benchmarking and prompt optimization],
)

// ===== EDUCATION =====
#section("Education")

#entry(
  [*Purdue University* | Polytechnic Institute],
  [*Aug 2024 -- Present*],
)
B.S. Web Programming and Design (on leave of absence since May 2026)

#v(4pt)
#text(size: 9.5pt)[*Leadership:* Founded high school robotics team; competed at FIRST Robotics Competition (FRC) World Championships (2#sym.times)]
