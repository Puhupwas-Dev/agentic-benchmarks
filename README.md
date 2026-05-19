# Agentic Benchmarks – Personal Reference

> Internal collection of benchmarks for evaluating autonomous coding assistants.  
> Maintained for my own development and evaluation workflows.

---

## Classic Code Generation (Single-Turn)

- **HumanEval** – 164 hand‑crafted Python problems (function‑level). Baseline for basic coding ability.
- **MBPP** – 974 beginner‑friendly Python tasks. Good for fundamental NL‑to‑code testing.
- **APPS** – 10k competition‑style problems (Codeforces, Kattis). Tests algorithmic complexity.
- **BigCodeBench** – 1,140 realistic Python tasks across 139 libraries. Checks multi‑API usage in one turn.
- **DS-1000** – 1,000 data‑science problems (Stack Overflow derived). Library proficiency for data workflows.
- **DSCodeBench** – 1,000 GitHub‑based data‑science problems. Moves toward project‑level realism.
- **MultiPL-E** – HumanEval translated into 18 languages (C, Java, Go, etc.). Cross‑language support.
- **CodeXGLUE** – 14‑dataset suite (code refinement, search, summarisation). Debugging via code refinement.
- **CRUXEval** – 800 Python functions with I/O pairs. Code reasoning and execution understanding.
- **EvalPlus** – toolkit to expand HumanEval/MBPP test suites by 35‑80×. Emphasises thorough verification.

---

## Repository‑Level & Code Editing (Multi‑File, Multi‑Step)

- **SWE‑bench** – ~2,294 real GitHub issues (12 Python projects). Prime benchmark for autonomous dev.
- **SWE‑bench Verified** – 500 issue subset with engineer‑confirmed solutions. Standard comparison point.
- **SWE‑bench Lite** – 300‑task subset focused on bug fixes with failing tests. Pure program repair.
- **Program Repair** – Defects4J (357 Java bugs), QuixBugs (40 toy bugs). Validates debugging.
- **Refactory/Code‑Edit** – CodeXGLUE refinement, ManySStuBs. Fine‑grained patch generation.
- **CrossCodeEval** – cross‑file completion tasks (4 languages). Multi‑file context usage.
- **RepoBench (RepoEval)** – repository‑level retrieval and completion (Python, Java). Simulates codebase work.

---

## Open‑Ended & Agentic (Tool Use, Multi‑Step)

- **Terminal‑Bench** – ~80 interactive terminal tasks (Docker packaged). Tool use, planning, adaptation.
- **LiveCodeBench** – continuously updated competitive programming tasks. Prevents training leakage, tests self‑debugging.
- **InterCode** – framework with interactive coding environments and execution feedback. Iterative code editing.
- **ProjectTest** – unit‑test generation for 20 projects (Python, Java, JS). Agent as QA engineer.
- **TestGenEval** – test‑case generation using SWE‑bench repos. Self‑verification skills.
- **LegacyBench** – legacy transformation tasks (Java, Python, React). Long‑horizon reasoning for large edits.
- **Agent‑Specific** – Claude Code, Codex CLI, Gemini, Cursor, Qwen. Scores on SWE‑bench Verified, Terminal‑Bench.

---

## Leaderboards & Toolkits (For Reference)

- **Public leaderboards used:** SWE‑bench (and subsets), Terminal‑Bench, LiveCodeBench, BigCodeBench.
- **Common without leaderboard:** HumanEval, MBPP, APPS, MultiPL‑E, DS‑1000.
- **Evaluation harnesses:** SWE‑bench harness, Terminal‑Bench orchestration, OpenAI Evals, EvalPlus.

---

*This document is for internal use only. Last updated – May 2026.*
