# Auto-Sync Workflow

Complete reference for the task manager auto-sync feature. Triggered by `:sync-tasks`, "sync tasks", "auto-sync", or "refresh tasks".

---

## Workflow Overview

```
Step 0: Parse Injected Dates
    ↓
Step 1: Gather All Context (Retros, Strategy)
    ↓
Step 2: Cross-Reference with tasks.md
    ↓
Step 3: Full Auto-Update
    ↓
Step 4: Generate Changelog
```

---

## Step 0: Parse Injected Dates

**CRITICAL:** Before any queries, extract actual date values from the injected context.

Look for the block that starts with `# Current Date Context` and extract:
```
TODAY: YYYY-MM-DD        → use for today's tasks
YESTERDAY: YYYY-MM-DD    → use for yesterday's data
TWO_DAYS_AGO: YYYY-MM-DD → use for from_date parameter
```

**Example:** If context shows `TWO_DAYS_AGO: 2026-01-29`, then use `from_date="2026-01-29"` (NOT the literal string "TWO_DAYS_AGO").

**Error handling:** If no date context is found, warn user and request manual date input.

---

## Step 1: Gather All Context

### 1.1 Retros (5 most recent)

**Location:** `retros/2026/W*/`

**File patterns:**
- Daily: `YYYY-MM-DD.md` (e.g., `2026-01-14.md`)
- Weekly: `YYYY-WXX.md` or `WXX Weekly.md`

**How to find 5 most recent:**
1. List all `.md` files in week folders
2. Sort by date in filename (descending)
3. Take first 5

**Extract from sections:**

| Section | What to extract |
|---------|-----------------|
| `## Brain Dump` | Commitments, plans, blockers, things to do |
| `## Did I move toward my main goal?` | Progress items, next steps, incomplete tasks |
| `## One Insight` | Learnings that may need follow-up action |
| `## One Win` | Completed items (mark as done in tasks.md) |

### 1.2 Strategy OKR

**Location:** `retros/2026/2025 yearly retro/2026-strategy-okr.md`

**Extract from sections:**

| Section | What to extract |
|---------|-----------------|
| `## Roadmap Q1` | Current month tasks, key deliverables |
| `### Key Results` | KR deadlines, target metrics |
| `## Weekly Review Checklist` | Recurring items to track |

**Priority mapping from strategy:**
- Hard deadline approaching → Highest
- Current quarter priorities → High
- Secondary tasks → Medium

---

## Step 2: Cross-Reference with tasks.md

1. Read current `tasks.md`
2. Compare with gathered context
3. Identify:
   - **New tasks** to add (from retros, strategy)
   - **Updates** needed (priority changes, new deadlines)
   - **Completed** tasks (mentioned as done in retros)
   - **Obsolete** tasks (no longer relevant)

**Duplicate detection:** Match tasks by content similarity (fuzzy matching), not exact text or position.

---

## Step 3: Full Auto-Update

1. **Add** new tasks in SMART format with correct emoji syntax
2. **Update** priorities based on urgency from context
3. **Mark complete** `[x]` tasks mentioned as done in retros
4. **Remove** obsolete tasks that are no longer relevant

Apply [SMART framework](smart-framework.md) to all new tasks.

---

## Step 4: Generate Changelog

Output detailed markdown report:

```markdown
## tasks Sync Report

**Synced at:** YYYY-MM-DD HH:MM
**Sources:** N retros, strategy OKR

### Added Tasks
- [ ] Task 1 priority 📅 YYYY-MM-DD (from: retro YYYY-MM-DD)
- [ ] Task 2 priority 📅 YYYY-MM-DD (from: strategy OKR Q1)

### Updated Tasks
- Task X: priority changed (reason)
- Task Y: new deadline 📅 YYYY-MM-DD (from retro)

### Completed/Removed
- [x] Task Z (marked complete in retro)
- [-] Old task (removed - no longer relevant)

### Skipped (Duplicates)
- Task already exists: "..." (matched existing task)

### Context Summary
- **Strategy focus:** [current quarter priority from OKR]
- **Recent wins:** [from retros]
```

---

## Idempotency

Auto-sync is designed to be idempotent and safe to run multiple times:

| Guarantee | How it's ensured |
|-----------|------------------|
| No duplicates | Tasks matched by content similarity before adding |
| Same result | Running sync twice produces identical tasks.md |
| Transparent | All changes logged in changelog |
| Reversible | Changelog shows what was changed and why |

**Matching algorithm:**
1. Normalize task text (lowercase, trim whitespace, remove emojis)
2. Compare against existing tasks using fuzzy matching (>80% similarity)
3. If match found, check if update needed; if not, skip
4. Log skipped duplicates in report

---

## Error Handling

| Error | Handling |
|-------|----------|
| Empty retro files | Skip empty files, continue with others |
| Missing date context | Warn user, request manual date input before proceeding |
| File read error | Log error, continue with available sources |
| Invalid task format | Auto-fix to valid Obsidian Tasks syntax |

**Graceful degradation:** Sync should always complete with available sources. Missing sources are logged but don't block the sync.
