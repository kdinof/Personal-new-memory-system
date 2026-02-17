---
name: task-manager
description: >-
  Manage tasks in tasks.md with Obsidian Tasks emoji syntax and SMART framework.
  Handles task creation, prioritization, daily planning, and multi-source auto-sync.
  Use when the user wants to: (1) add a task or todo item, (2) plan today or prioritize tasks,
  (3) sync tasks from retros and calendar, (4) review or reorganize their task list,
  or says "add task", "plan today", "sync tasks", "review tasks", "/tasks".
---

# Task Manager

Manage tasks in `tasks.md` using Obsidian Tasks emoji syntax.. Apply SMART framework, limit daily focus to 3 major tasks, and sync from multiple sources.

## Execution

**IMPORTANT:** When executing sync or any multi-step task-manager operation, the parent agent MUST:
- Use `model: "sonnet"` (Sonnet 4.5) for all Task agent invocations
- Use `run_in_background: true` to avoid blocking the user's session
- The agent will complete autonomously and the user can check results later

Example Task tool invocation:
```
Task(subagent_type="general-purpose", model="sonnet", run_in_background=true, ...)
```

## Quick Start

1. Read `tasks.md` and recent retros for context
2. Apply [SMART framework](references/smart-framework.md) to all new tasks
3. Use [Obsidian Tasks syntax](references/task-syntax.md) for formatting
4. Limit "MUST DO" to max 3 tasks daily

## Commands

| Request | Action |
|---------|--------|
| "Add task X" | Add with SMART format, suggest priority and date |
| "Plan today" | Read retros, select top 3, move rest |
| "Review week" | Summarize done/pending, adjust dates |
| "Prioritize" | Reorder by urgency × impact |
| `:sync-tasks` | Full auto-sync from all sources (see [auto-sync.md](references/auto-sync.md)) |

## Priority Markers

| Emoji | Level | Use For |
|-------|-------|---------|
| 🔺 | Highest | Critical, blocking |
| ⏫ | High | Important this week |
| 🔼 | Medium | Should do |
| 🔽 | Low | Nice to have |
| ⏬ | Lowest | Someday |

## File Structure

Maintain tasks.md sections:
- **MUST DO Today** (max 3 tasks)
- **Nice to have today**
- **Tomorrow / Specific dates**
- **Completed**
- **Long-term goals / Health / Tech debt**

## References

- [task-syntax.md](references/task-syntax.md) — Complete Obsidian Tasks emoji syntax
- [smart-framework.md](references/smart-framework.md) — SMART criteria and transformation examples
- [auto-sync.md](references/auto-sync.md) — Auto-sync workflow, sources, and changelog format
- [examples.md](references/examples.md) — Command examples and sample outputs

## Edge Cases

| Scenario | Handling |
|----------|----------|
| No injected date context | Warn user, request manual date input |
| Empty retro files | Skip, continue with other sources |
| Duplicate task detected | Skip, log in "Skipped" section of report |
| Invalid emoji syntax | Auto-fix to nearest valid Obsidian Tasks emoji |
| Task >4 hours estimated | Split into subtasks automatically |

## Idempotency

Auto-sync is idempotent and safe to run multiple times:
- Tasks matched by content similarity (not position)
- Running sync twice produces same result
- Duplicates detected via fuzzy matching and skipped
- Changes logged in changelog for transparency
