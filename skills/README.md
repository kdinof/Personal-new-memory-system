# Claude Skills

Custom skills for personal productivity and automation.

## Available Skills

### bootstrap
**First-run setup conversation**

Configures the memory system through natural conversation. Learns who the user is, what matters to them, and how the bot should behave. Writes USER.md, SOUL.md, life-projects.md, and current-focus.md. Auto-triggers on first start when memory files are empty. Can also be re-run to reconfigure.

**Usage:** Auto-triggers on first start, or say "redo the setup", "reconfigure the bot"

---

### daily-retro
**Guided daily retrospective**

Conversational companion for structured evening reflections. Guides through three sections (One Win, Main Goal, Brain Dump) or processes a pasted transcript into retro format. Creates dated files in `retros/YYYY/WXX/`.

**Usage:** "Let's do a retro", "daily retro", or paste a transcript and say "this is my retro"

---

### task-manager
**Task management using tasks.md**

Manages tasks in tasks.md using Obsidian Tasks emoji syntax with SMART framework.

**Usage:** "Add task", "plan today", "sync tasks", "review tasks"

---

### weekly-reflection
**Weekly retrospective and productivity coaching**

Analyzes daily notes, calendar events, and previous summaries for structured weekly feedback.

**Usage:** "Analyze my week" or "Create weekly retrospective"

---

### weekly-planning
**Weekly planning automation**

Creates weekly plans based on retros, OKR, and calendar data.

**Usage:** "Create weekly plan" or "Plan my week"

---

### ai-project-organizer-old
**Project folder structure organizer**

Helps create and organize project folder structures optimized for Claude Code using three-tier architecture and Memory Context System.

**Usage:** "Set up workspace" or "Organize project structure"

---

## Using Skills

Skills are automatically loaded when relevant. You can also explicitly invoke them:

**Natural language:**
```
Use the task-manager skill to sync my tasks
```

**Slash commands:**
```
/daily-retro            # Guided daily retrospective
/task-manager            # Manage and sync tasks in tasks.md
/weekly-reflection      # Analyze weekly progress
```

## Skill Development

To create a new skill:
1. Create a folder in `skills/` with skill name
2. Add `SKILL.md` with skill definition
3. Add supporting files: `references/`, `scripts/`, `assets/` as needed
4. Use folder structure (not `.skill` archives) for easier version control

See existing skills for reference.
