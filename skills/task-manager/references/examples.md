# Task Manager Examples

Practical examples for common Task Manager operations.

---

## Command Examples

### Add Task

**User:** "Add task: review quarterly report"

**Result:**
```markdown
- [ ] Review quarterly report and prepare 3 key insights for strategy meeting ⏫ 📅 2026-02-10
```

**What happened:**
1. Applied SMART framework (specific deliverable: "3 key insights")
2. Added priority based on context (High - relates to strategy)
3. Set due date based on upcoming meetings

---

### Plan Today

**User:** "Plan today"

**Before:**
```markdown
## MUST DO Today
- [ ] Finish presentation ⏫ 📅 2026-02-06
- [ ] Review PR #42 🔼 📅 2026-02-06
- [ ] Send weekly update ⏫ 📅 2026-02-06
- [ ] Update docs 🔼 📅 2026-02-06
- [ ] Call with partner 🔺 📅 2026-02-06
```

**After:**
```markdown
## MUST DO Today (max 3)
- [ ] Call with partner 🔺 📅 2026-02-06
- [ ] Finish presentation ⏫ 📅 2026-02-06
- [ ] Send weekly update ⏫ 📅 2026-02-06

## Nice to have today
- [ ] Review PR #42 🔼 📅 2026-02-06
- [ ] Update docs 🔼 📅 2026-02-06
```

**What happened:**
1. Applied Top 3 Rule
2. Prioritized by urgency (Highest first)
3. Moved overflow to "Nice to have"

---

### Prioritize

**User:** "Prioritize my tasks"

**Analysis output:**
```
Priority Matrix Analysis

High Urgency + High Impact (Do First):
- [ ] Call with partner 🔺 — deadline today, revenue impact
- [ ] Finish presentation ⏫ — blocks strategy meeting

High Urgency + Low Impact (Delegate/Quick Win):
- [ ] Review PR #42 — quick review, unblocks team

Low Urgency + High Impact (Schedule):
- [ ] Q1 roadmap planning — important but no deadline

Low Urgency + Low Impact (Defer/Drop):
- [ ] Update old docs — nice to have, no dependencies

Recommended order: 1, 2, 3, 4, 5
```

---

## SMART Transformation Examples

### Before / After

| Vague Input | SMART Output |
|-------------|--------------|
| "Work on course" | `- [ ] Create 10 slides for Block 2: Prompt Engineering ⏫ 📅 2026-02-08` |
| "Do marketing" | `- [ ] Write LinkedIn post about AI tools (500 words) 🔼 📅 2026-02-07` |
| "Prepare meeting" | `- [ ] Write 3-point agenda for team call ⏫ 📅 2026-02-06` |
| "Fix bug" | `- [ ] Resolve login timeout issue in auth.ts 🔺 📅 2026-02-06` |
| "Exercise" | `- [ ] Gym session (1 hour) 🔼 🔁 every Monday, Wednesday, Friday 📅 2026-02-07` |

### Complex Task Splitting

**Input:** "Launch new feature"

**Output:**
```markdown
- [ ] Launch user notifications feature ⏫ 📅 2026-02-15
  - [ ] Write technical spec (2 pages) 📅 2026-02-08
  - [ ] Implement backend API endpoints 📅 2026-02-11
  - [ ] Create frontend components 📅 2026-02-13
  - [ ] Write tests (>80% coverage) 📅 2026-02-14
  - [ ] Deploy to staging and QA 📅 2026-02-15
```

---

## Sample Sync Report

```markdown
## Task Manager Sync Report

**Synced at:** 2026-02-06 14:30
**Sources:** 5 retros, strategy OKR

### Added Tasks (5)
- [ ] Prepare slides for partner meeting ⏫ 📅 2026-02-07 (from: retro 2026-02-05)
- [ ] Review comments on PR #156 🔼 📅 2026-02-06 (from: retro 2026-02-04)
- [ ] Check conversion metrics for January ⏫ 📅 2026-02-08 (from: strategy OKR Q1)
- [ ] Record video preview for course 🔺 📅 2026-02-10 (from: retro 2026-02-05)
- [ ] Update API documentation ⏬ 📅 2026-02-20 (from: retro 2026-02-04)

### Updated Tasks (2)
- "Finalize contract": priority High → Highest (urgent deadline)
- "Code review": deadline 📅 2026-02-10 → 📅 2026-02-07 (from retro)

### Completed/Removed (2)
- [x] Send weekly report (marked complete in retro 2026-02-05)
- [-] Old migration task (removed - project cancelled)

### Skipped (Duplicates) (2)
- "Prepare presentation" — matched existing task at 82% similarity
- "Write post" — matched "Write LinkedIn post" at 85% similarity

### Context Summary
- **Strategy focus:** Q1 priority — course and sales
- **Recent wins:** Closed 2 deals, finished Block 1 of course
```

---

## Recurring Task Examples

### Weekly Patterns
```markdown
- [ ] Weekly team standup 🔼 🔁 every Monday 📅 2026-02-10
- [ ] Send weekly update email ⏫ 🔁 every Friday 📅 2026-02-07
- [ ] Review analytics dashboard 🔼 🔁 every Monday 📅 2026-02-10
```

### Daily Habits
```markdown
- [ ] Morning journaling 🔼 🔁 every day 📅 2026-02-07
- [ ] Check messages/email 🔽 🔁 every weekday 📅 2026-02-07
```

### Monthly/Quarterly
```markdown
- [ ] Monthly financial review 🔼 🔁 every month on the last 📅 2026-02-28
- [ ] Quarterly OKR review ⏫ 🔁 every 3 months 📅 2026-03-31
```

---

## Error Scenarios

### Partial Sync (some source unavailable)

**Report includes:**
```markdown
### Partial Sync

**Skipped sources:**
- [source name] (unavailable)

**Completed sources:**
- 5 retros
- Strategy OKR

Recommend running `:sync-tasks` again when all sources are available.
```

### No Date Context

**Warning shown:**
```
No injected date context found.

Please provide today's date to proceed with sync:
- Today: YYYY-MM-DD

Or run the skill through a hook that injects dates automatically.
```
