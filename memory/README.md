# Memory Context System

This folder contains structured long-term memory for Claude sessions.

## Files

| File | Purpose | Update Frequency |
|------|---------|------------------|
| `USER.md` | Who the user is: identity, values, working style | After bootstrap, then monthly |
| `SOUL.md` | Who the bot is: personality, tone, rules | After bootstrap, then when changed |
| `current-focus.md` | Current week priorities | Weekly |
| `life-projects.md` | Active projects with status | Weekly |
| `learnings.md` | Patterns and insights from retros | After retro analysis |

## Reading Order

When starting a session:
1. `SOUL.md` - How to behave
2. `USER.md` - Who you're talking to
3. `current-focus.md` - What matters this week
4. `life-projects.md` - Project context
5. `learnings.md` - Only if analyzing patterns

## Update Rules

### What to Add
- Recurring patterns (appeared 3+ times)
- Explicit user preferences
- Key decisions and their rationale
- Project milestones and pivots

### What NOT to Add
- One-time events
- Transient moods
- Speculation
- Sensitive financial details

### Format Guidelines
- Keep entries concise (1-3 sentences)
- Include dates for time-sensitive items
- Use Russian for content, English for headings
- Mark completed items with ✅, blocked with ⚠️

## Data Retention

- `USER.md`: Review quarterly, update when life changes
- `SOUL.md`: Update only when user requests personality changes
- `current-focus.md`: Replace weekly
- `life-projects.md`: Update status, archive completed quarterly
- `learnings.md`: Prune outdated patterns yearly
