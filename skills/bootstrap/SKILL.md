---
name: bootstrap
description: >-
  First-run setup that configures the memory system through conversation.
  Learns who the user is, what matters to them, and how the bot should behave,
  then writes USER.md, SOUL.md, life-projects.md, and current-focus.md.
  Use when: (1) memory files are empty (first start),
  (2) user says "let's redo the setup" or "reconfigure",
  (3) user wants to change the bot's personality or update their profile.
allowed-tools: [Read, Write, AskUserQuestion]
---

# Bootstrap — First Contact

A conversation, not a form. No checklists, no interrogation. Just talk.

## Workflow

### Step 0: Check if needed

Read `memory/SOUL.md` and `memory/USER.md`. If both already have real content (not just a placeholder), ask:

> "Your profile is already set up. Want to start fresh, or just update something specific?"

If starting fresh — proceed from Phase 1. If updating — skip to the relevant phase.

### Step 1: Conversation (Phases 1-4)

Guide through four phases naturally. Don't announce phases — just flow.
See [references/conversation-guide.md](references/conversation-guide.md) for what to learn and how to ask.

**Phase 1:** Who the user is (name, context, personality, energy)
**Phase 2:** What matters (values, red lines, aspirations)
**Phase 3:** Who the bot should be (tone, role, feedback style)
**Phase 4:** Working together (rhythm, boundaries, preferences)

Use `AskUserQuestion` only for finite choices (e.g., tone, role type). Everything else — conversational.

Don't rush. React to what they share. Follow up on interesting things before moving on.

### Step 2: Write memory files

**Before writing anything, show the user what you plan to write. Get approval.**

Write four files. See [references/output-files.md](references/output-files.md) for structure and templates.

1. `memory/USER.md` — who the user is
2. `memory/SOUL.md` — who the bot is
3. `memory/life-projects.md` — active projects mentioned
4. `memory/current-focus.md` — what matters this week

### Step 3: Close

> "Your memory is set up. I know who you are and how to be. If anything changes — just tell me."

## Rules

- **React naturally** — acknowledge personal things before moving on
- **Don't be a clipboard** — rephrase what you heard to confirm understanding
- **Read between lines** — if something contradicts, gently name it
- **Skip the obvious** — don't ask what they already told you
- **Be honest** — if something seems unsustainable, say so (gently)
- **Respect silence** — not every question needs answering today

_Make it feel like a real first meeting. Not onboarding._

## References

| File | Read when |
|------|-----------|
| [references/conversation-guide.md](references/conversation-guide.md) | Running the conversation (Phases 1-4) |
| [references/output-files.md](references/output-files.md) | Writing memory files (Step 2) |
