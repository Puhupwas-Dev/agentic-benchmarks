# Awesome Agentic Benchmarks

A curated survey of benchmarks used to evaluate autonomous and semi-autonomous coding assistants. The benchmarks below range from single-function code generation tasks to complex multi-step scenarios requiring tool use and repository-level reasoning.

---

## Classic Code Generation Benchmarks (Single-Turn)

- **HumanEval** – 164 hand-crafted Python problems. Models implement a function given its docstring and signature. *Type:* unit-test-driven code generation. *Leaderboard:* none, but widely reported. *Data:* synthetic, self-contained. *Relevance:* baseline for basic coding ability; no planning or tool use.
- **MBPP (Mostly Basic Python Problems)** – 974 beginner-friendly tasks with examples and tests. *Type:* NL-to-code for entry-level algorithms. *Leaderboard:* none. *Data:* crowd-sourced Python Q&A. *Relevance:* gauges fundamental skills, still one-shot and single-file.
- **APPS** – 10k competition-style problems from sites like Codeforces and Kattis. *Type:* competitive programming code generation. *Leaderboard:* none. *Data:* real contest problems with tests. *Relevance:* stresses algorithmic complexity beyond toy puzzles.
- **BigCodeBench** – 1,140 realistic Python tasks covering 139 libraries across seven domains. *Type:* multi-API code generation. *Leaderboard:* yes. *Data:* semi-synthetic but realistic. *Relevance:* checks library usage and multi-step logic within a single turn.
- **DS-1000** – 1,000 data-science challenges drawn from Stack Overflow, targeting seven popular libraries. *Type:* data-analysis code generation with required API usage. *Leaderboard:* evaluation platform, but no real-time board. *Data:* polished Q&A. *Relevance:* measures library proficiency for data workflows.
- **DSCodeBench** – 1,000 GitHub-derived data-science problems with longer, more complex solutions. *Type:* higher-complexity data-science generation. *Leaderboard:* none yet. *Data:* real project issues. *Relevance:* moves toward project-level realism for autonomous data assistants.
- **MultiPL-E** – HumanEval translated into 18 languages (C, Java, Go, etc.). *Type:* multilingual code generation. *Leaderboard:* none. *Data:* synthetic translations. *Relevance:* tests cross-language support.
- **CodeXGLUE** – suite of 14 datasets for tasks like code refinement, search and summarization. *Type:* varied, including bug fixing and text-to-code. *Leaderboard:* yes (archived). *Data:* mixed real and synthetic. *Relevance:* provides sub-skill evaluations, especially for debugging via code refinement.
- **CRUXEval** – 800 Python functions with input-output pairs for reasoning about code behavior. *Type:* code reasoning and execution. *Leaderboard:* yes. *Data:* generated functions with test I/O. *Relevance:* probes semantic understanding beyond pure generation.
- **EvalPlus** – toolkit that expands HumanEval/MBPP test suites by 35–80×. *Type:* enhanced evaluation rather than new tasks. *Leaderboard:* no. *Data:* auto-generated tests. *Relevance:* emphasizes thorough verification of generated code.

---

## Repository-Level & Code-Editing Benchmarks (Multi-File, Multi-Step)

- **SWE-bench** – ~2,294 real GitHub issues across 12 Python projects; tasks require patches that pass tests. *Type:* repository-level bug fixing and feature implementation. *Leaderboard:* yes. *Data:* real repositories and issues. *Relevance:* prime benchmark for autonomous developer capabilities.
- **SWE-bench Verified** – curated 500-issue subset with engineer-confirmed solutions. *Type:* same as SWE-bench. *Leaderboard:* yes. *Data:* real issues (subset). *Relevance:* standard comparison point for agent systems.
- **SWE-bench Lite** – 300-task subset focusing on bug fixes with failing tests. *Type:* repository-level defect repair. *Leaderboard:* none. *Data:* real issues filtered for clarity. *Relevance:* analyzes pure program repair performance.
- **Program Repair Benchmarks** – **Defects4J** (357 Java bugs) and **QuixBugs** (40 toy bugs). *Type:* bug fixing via code edits. *Leaderboard:* none. *Data:* real (Defects4J) and synthetic (QuixBugs). *Relevance:* validates debugging skills in controlled settings.
- **Refactory/Code-Edit Datasets** – small benchmarks like CodeXGLUE code-refinement and ManySStuBs. *Type:* snippet-level bug fixes or refactors. *Leaderboard:* none. *Data:* real or synthetic small bugs. *Relevance:* tests fine-grained patch generation.
- **CrossCodeEval** – cross-file completion tasks from real repos in four languages. *Type:* multi-file code completion. *Leaderboard:* none. *Data:* curated real code. *Relevance:* measures ability to use long, multi-file context.
- **RepoBench (RepoEval)** – repository-level retrieval and completion tasks across Python and Java. *Type:* long-context completion and retrieval. *Leaderboard:* none. *Data:* real repositories. *Relevance:* simulates using a codebase to generate coherent additions.

---

## Open-Ended & Agentic Benchmarks (Tool Use, Multi-Step)

- **Terminal-Bench** – ~80 interactive terminal tasks (e.g., dependency fixes, model training, kernel builds) packaged in Docker. *Type:* multi-step shell interaction with automated tests. *Leaderboard:* yes. *Data:* synthetic scenarios with realistic setups. *Relevance:* evaluates tool use, planning, and adaptation in a terminal.
- **LiveCodeBench** – continuously updated competitive-programming tasks that support scenarios like self-repair and execution reasoning. *Type:* open-ended code generation with dynamic tasks. *Leaderboard:* yes. *Data:* fresh contest problems. *Relevance:* prevents training-data leakage and probes self-debugging ability.
- **InterCode** – framework of interactive coding environments with execution feedback. *Type:* multi-step code editing and running. *Leaderboard:* project site with results. *Data:* configurable code puzzles. *Relevance:* tests the ability to iterate on code based on runtime outputs.
- **ProjectTest** – unit-test generation for 20 projects each in Python, Java and JavaScript. *Type:* multi-file test synthesis. *Leaderboard:* none. *Data:* real open-source projects. *Relevance:* assesses an agent’s ability to act as a QA engineer.
- **TestGenEval** – test-case generation and completion using the same repos as SWE-bench. *Type:* writing tests for existing code. *Leaderboard:* none. *Data:* real-world projects. *Relevance:* measures skills vital for self-verifying agents.
- **LegacyBench** – legacy transformation tasks across Java, Python and React projects (e.g., upgrading versions, generating tests). *Type:* multi-step codebase modernization. *Leaderboard:* none. *Data:* real legacy systems. *Relevance:* stresses long-horizon reasoning for large-scale edits.
- **Agent-Specific Evaluations** – tools like Claude Code, Codex CLI, Gemini, Cursor or Qwen report scores on benchmarks such as SWE-bench Verified and Terminal-Bench to showcase real-world agentic performance.

---

## Leaderboards and Toolkits

- **Public leaderboards:** SWE-bench (and subsets), Terminal-Bench, LiveCodeBench, BigCodeBench, CodeXGLUE.
- **Widely used without leaderboards:** HumanEval, MBPP, APPS, MultiPL-E, DS-1000.
- **Evaluation toolkits:** SWE-bench harness, Terminal-Bench orchestration, OpenAI’s Evals, EvalPlus for expanded testing suites.

## Related Awesome Lists

- [Awesome Language Agent Benchmarks](https://github.com/agential-ai/awesome-language-agent-benchmarks) – broader survey of evaluation suites for language agents.
- [Awesome AI Agent Benchmarks](https://github.com/supernalintelligence/Awesome-General-Agents-Benchmark) – general-purpose agent benchmarking resources.
- [Awesome AI Agent Testing](https://github.com/chaosync-org/awesome-ai-agent-testing) – frameworks and tools for testing autonomous agents.
- [Awesome Agentic Search](https://github.com/qhjqhj00/awesome-agentic-search) – curated list of resources and benchmarks for agentic search systems.
- [Awesome Code LLM](https://github.com/codefuse-ai/Awesome-Code-LLM) – compilation of code-focused language models and related datasets.

These benchmarks collectively trace the evolution from single-function generation to fully autonomous software engineering. High scores on repository-level and interactive benchmarks indicate strong potential for real-world agentic coding assistants.
