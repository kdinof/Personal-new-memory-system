# Data Sources

Sources and configuration for weekly planning.

## Google Calendar

Configure your calendar IDs below:

| Calendar | ID |
|----------|-----|
| Primary | `your-email@gmail.com` |
| Planning | `<your-planning-calendar-id>@group.calendar.google.com` |
| Family | `<your-family-calendar-id>@group.calendar.google.com` |

## Retrospectives

**Daily retros:**
- Path: `retros/YYYY/WXX/YYYY-MM-DD.md`
- Glob: `retros/YYYY/W{PREVIOUS_WEEK}/*.md`

**Weekly retro:**
- `retros/YYYY/WXX/YYYY WXX.md` or `WXX Weekly.md`

## Strategic Goals (OKR)

File: `retros/2026/2025 yearly retro/2026-strategy-okr.md`

## Tasks

File: `Tasks.md` (vault root)

**Task format (Obsidian Tasks syntax):**
```markdown
- [ ] Task description 📅 2026-01-27 ⏫ #project/name
  - Context: [source]
  - OKR: [key result name]
```

Priorities: ⏫ High | 🔼 Medium | 🔽 Low
