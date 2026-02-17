# Personal Memory System

AI-powered personal productivity system with persistent memory, skills, and weekly retrospectives.

## First Start Check

**CRITICAL:** At the start of every session, check `memory/SOUL.md` and `memory/USER.md`.

If these files are empty (contain only a placeholder like "_Created by bootstrap_" or "_Empty until..._"), this means the system has not been configured yet.

**In this case, ALWAYS trigger the `bootstrap` skill before doing anything else.** Do not skip this step. Do not ask the user what they want — just start the bootstrap conversation. The user needs to provide context about themselves and configure the bot's personality before the system can work.

## Structure

```
Personal-memory-system/
├── CLAUDE.md                 # This file - root orchestrator
├── memory/                   # Memory Context System
│   ├── README.md            # Memory governance rules
│   ├── USER.md              # Who the user is
│   ├── SOUL.md              # Who the bot is
│   ├── learnings.md         # Patterns from retros
│   ├── life-projects.md     # Active life projects
│   └── current-focus.md     # Current week focus
├── retros/                   # Weekly and daily retrospectives
│   └── YYYY/                # Year folder
│       └── WXX/             # Week folder
│           ├── YYYY-MM-DD.md    # Daily retro
│           └── YYYY WXX.md     # Weekly summary
├── skills/                   # Claude Code skills
│   ├── bootstrap/           # First-run setup conversation
│   ├── daily-retro/         # Guided daily retrospective
│   ├── weekly-planning/
│   ├── weekly-reflection/
│   └── task-manager/
└── hooks/                    # Session hooks
    └── inject-dates.sh      # Injects current date context
```

## How to Use

When working in this folder, Claude should:

1. **Read `memory/SOUL.md` first** - understand how to behave
2. **Read `memory/USER.md`** - understand who you're talking to
3. **Read `memory/current-focus.md`** - understand current priorities
4. **Reference `memory/life-projects.md`** - for project context
5. **Check `memory/learnings.md`** - for patterns and insights

## Memory Update Protocol

After each significant session:
1. Extract new learnings → update `memory/learnings.md`
2. Update project status → update `memory/life-projects.md`
3. Refresh weekly focus → update `memory/current-focus.md`

## Date Format

- Daily files: `YYYY-MM-DD.md`
- Weekly summaries: `YYYY WXX.md` or `WXX Weekly.md`

## Language

- Headings in English
- Content primarily in Russian
