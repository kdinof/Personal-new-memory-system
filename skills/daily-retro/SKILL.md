---
name: daily-retro
description: >-
  Guided daily retrospective that creates structured retro files (retros/YYYY/WXX/YYYY-MM-DD.md)
  with YAML frontmatter and three sections: One Win, Main Goal progress, Brain Dump.
  Use when the user wants to: (1) write a daily retro or evening reflection via guided conversation,
  (2) process a pasted transcript or voice memo into retro format,
  (3) journal their day, or says "retro time", "let's do a retro", "this is my retro".
allowed-tools: [Read, Write, Glob, Bash]
---

# Daily Retro

Conversational companion for structured daily retrospectives. Two modes: guided Q&A or transcript processing.

## Workflow

### Step 0: Determine the date and week

Use Bash to get the date and ISO week number:

```bash
# For today
date +%Y-%m-%d        # → 2026-02-17
date +%W              # → 07 (week number)

# For a specific date (when user provides one)
date -j -f "%Y-%m-%d" "YYYY-MM-DD" "+%W"
```

- **Guided mode:** Default to today. Only confirm if it seems ambiguous (e.g. past midnight).
- **Transcript mode:** Ask: "For which date is this retro?"

### Step 1: Create the folder

```bash
mkdir -p retros/YYYY/WXX
```

### Step 2: Check for existing file

If `retros/YYYY/WXX/YYYY-MM-DD.md` already exists, warn the user and ask: overwrite or append?

### Step 3: Collect content

**Guided mode** — ask one section at a time, wait for response. See [references/conversation-flow.md](references/conversation-flow.md).

**Transcript mode** — parse the pasted text into the three sections. See [references/transcript-processing.md](references/transcript-processing.md).

### Step 3b: Process Brain Dump (guided mode only)

After collecting Brain Dump, help the user process `open-loop` items with four questions:
- Is this actually important? (If not → discard)
- Is this actually yours? (If not → delegate)
- Is this actually actionable? (If not → accept/document)
- Is this actually urgent? (If not → schedule)

Don't force — if the user wants to skip, move on. Keep it conversational, not interrogative.

### Step 4: Write the file

Path: `retros/YYYY/WXX/YYYY-MM-DD.md`

Show the complete retro to the user. On confirmation, write the file.

## File Template

```markdown
---
date: YYYY-MM-DD
week: WXX
type: daily-retro
---

## ⚡ One Win

[The best thing that happened today. One specific thing.]

## 🎯 Did I move toward my main goal?

[Progress on the primary goal from current-focus.md. Yes/No + what exactly.]

## 🧠 Brain Dump

[Everything else. Tag each item: `worry` / `open-loop` / `idea` / `feeling`.]
```

## Rules

- **Language:** Match the user's language. Don't translate.
- **Voice:** Keep the user's original words. Don't rewrite their thoughts.
- **Brevity:** One Win = 1-3 sentences. Main Goal = 1-3 sentences. Brain Dump = as long as needed.
- **No judgment:** Never evaluate whether a win is "big enough" or progress "sufficient".
- **No additions:** Don't add content the user didn't mention.
- **Context:** Read `memory/current-focus.md` before starting to know the main goal.
- **Scope:** Write and Bash ONLY create files/folders inside `retros/`. Never write anywhere else.
- **Red flags:** If Brain Dump shows rumination (same worry with no progress across days), catastrophizing, or excessive self-criticism — gently note it in conversation. Don't write it to the file, don't diagnose. Just: "I notice [pattern] keeps coming up. Maybe worth talking through with someone."

## References

| File | Read when |
|------|-----------|
| [references/conversation-flow.md](references/conversation-flow.md) | Running guided mode |
| [references/transcript-processing.md](references/transcript-processing.md) | Processing pasted text |
