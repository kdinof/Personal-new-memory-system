# Obsidian Tasks Emoji Syntax

Complete reference for Obsidian Tasks plugin emoji format.

## Task Format

```markdown
- [ ] Description [priority] [dates] [recurrence]
- [x] Completed task ✅ 2026-01-14
```

## Priority Emojis

Place AFTER task description:

| Emoji | Level | Use For |
|-------|-------|---------|
| 🔺 | Highest | Blocking, critical deadlines |
| ⏫ | High | Important this week |
| 🔼 | Medium | Should do when possible |
| (none) | Normal | Default priority |
| 🔽 | Low | Nice to have |
| ⏬ | Lowest | Someday/maybe |

**Example:**
```markdown
- [ ] Fix production bug 🔺 📅 2026-01-14
- [ ] Review PR ⏫ 📅 2026-01-15
- [ ] Update docs 🔼 📅 2026-01-20
```

## Date Emojis

| Emoji | Type | Purpose |
|-------|------|---------|
| 📅 | Due date | When task must be done |
| ⏳ | Scheduled | When to start working |
| 🛫 | Start date | Earliest start allowed |
| ➕ | Created | When task was added |
| ✅ | Done | Completion timestamp |

**Format:** `📅 YYYY-MM-DD`

**Example:**
```markdown
- [ ] Prepare presentation 🛫 2026-01-13 ⏳ 2026-01-14 📅 2026-01-15
```

## Recurring Tasks

Format: `🔁 every [interval]`

**Intervals:**
- `every day` / `every weekday`
- `every week` / `every 2 weeks`
- `every month` / `every 3 months`
- `every Monday` / `every Tuesday, Friday`
- `every month on the 1st`
- `every January on the 15th`

**Examples:**
```markdown
- [ ] Daily standup 🔁 every weekday 📅 2026-01-14
- [ ] Weekly review 🔁 every Friday 📅 2026-01-17
- [ ] Monthly report 🔁 every month on the last 📅 2026-01-31
- [ ] Quarterly planning 🔁 every 3 months 📅 2026-03-31
```

**Behavior:** When marked complete, creates new task with next due date.

## Nested Tasks (Subtasks)

Indent with 2 or 4 spaces:

```markdown
- [ ] Main project task ⏫ 📅 2026-01-20
  - [ ] Research phase 📅 2026-01-15
  - [ ] Implementation 📅 2026-01-18
  - [ ] Testing 📅 2026-01-19
```

## Task Status

| Marker | Status |
|--------|--------|
| `[ ]` | Todo |
| `[x]` | Done |
| `[-]` | Cancelled |
| `[/]` | In progress |
| `[>]` | Deferred |

## Tags

Add tags anywhere in task:

```markdown
- [ ] Review contract #legal #urgent 📅 2026-01-14
- [ ] Team sync #meeting #weekly 🔁 every Monday 📅 2026-01-20
```

## Internal Links

Link to notes:

```markdown
- [ ] Complete [[Project Alpha]] milestone ⏫ 📅 2026-01-20
- [ ] Review [[Meeting Notes 2026-01-13]] 📅 2026-01-14
```

## Complete Example

```markdown
- [ ] Провести блок 1 курса [[Claude Code Course]] 🔺 📅 2026-01-14
- [ ] Написать пост в LinkedIn #content ⏫ 🔁 every 3 days 📅 2026-01-15
- [ ] CrossFit тренировка #health 🔼 🔁 every Monday, Wednesday, Friday 📅 2026-01-15
- [x] Подготовить презентацию ✅ 2026-01-13
```
