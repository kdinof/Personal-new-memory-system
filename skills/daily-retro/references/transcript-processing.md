# Transcript Processing Flow

How to process a pasted transcript, voice memo, or text dump into retro format.

## Step 1: Receive text

User pastes a block of text. This could be:
- A voice memo transcript (often messy, with filler words)
- A text dump from notes
- A stream-of-consciousness brain dump
- A structured note from another app

## Step 2: Ask for the date

> "For which date is this retro? Today (YYYY-MM-DD) or another day?"

Default to today if user confirms or doesn't specify.

## Step 3: Parse into sections

Read the text and distribute into the three sections:

### ⚡ One Win
Look for:
- Positive statements ("I finished", "managed to", "finally did")
- Achievements, completions, milestones
- Moments of pride or satisfaction

Pick the **single strongest win**. If multiple, put the rest in Brain Dump.

### 🎯 Did I move toward my main goal?
Read `memory/current-focus.md` first to know the goal.

Look for:
- Mentions of the primary goal or related work
- Progress indicators ("worked on", "made progress", "started")
- Explicit statements about the goal

If nothing relates to the main goal, write: "No direct progress today." and note what was done instead.

### 🧠 Brain Dump
Everything else:
- Worries and concerns
- Ideas and plans
- Unfinished tasks
- Tomorrow's intentions
- Random observations
- Context and background

## Step 4: Preserve voice

- Keep the user's original phrasing as much as possible
- Clean up filler words from voice transcripts ("um", "like", "you know")
- Fix obvious transcription errors
- Don't add interpretation or analysis
- Don't rewrite casual language into formal prose

## Step 5: Show and confirm

Present the structured retro to the user:

> "Here's what I structured from your text. Does this look right? Want to change anything?"

Wait for confirmation before writing the file.
