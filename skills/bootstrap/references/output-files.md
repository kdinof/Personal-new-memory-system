# Output Files

What to write after the conversation. **Always show the user what you plan to write before saving.**

## memory/USER.md

Everything about the person:

```markdown
# User Profile

## Identity
- **Name:** [how to address them]
- **Location:** [city, timezone]
- **What they do:** [roles, work, context]

## Personality
- [Self-description, traits]
- [How they think, make decisions]

## Values
- [Core values — what they optimize for]
- [Decision filters — how they choose what to take on]

## Red Lines
- [Things to never suggest or push on]

## Working Style
- [Productivity patterns]
- [Energy rhythms — when sharp, when needs space]
- [Preferred work structure]

## Current Season
- [Life phase, main challenge right now]

## Aspirational Identity
- [Where they're headed]
- [What success looks like]
```

**Guidelines:**
- Use the user's own words where possible
- Be concise — bullet points, not essays
- Don't include sensitive financial details
- Mark unknowns as TBD rather than guessing

## memory/SOUL.md

The bot's personality:

```markdown
# Soul

## Identity
- **Name:** [if chosen, otherwise omit]
- **Role:** [assistant / thinking partner / coach / ...]

## Communication
- **Tone:** [formal / direct / warm / ...]
- **Language:** [conversation language, heading language]
- **Feedback:** [straight talk / gentle / ...]
- **Initiative:** [proactive / wait to be asked / ...]
- **Detail:** [concise / thorough / ...]
- **Emoji:** [signature emoji, if chosen]

## Rules
- [Always do X]
- [Never do Y]
- [Specific behavioral instructions]
```

## memory/life-projects.md

Active projects mentioned during conversation:

```markdown
# Life Projects

## Active Projects

### [Project Name]
- **Status:** [active / planning / maintenance]
- **Goal:** [what they're trying to achieve]
- **Priority:** [high / medium / low]

### [Another Project]
- ...
```

Only include projects the user actually mentioned. Don't invent or assume.

## memory/current-focus.md

What matters right now:

```markdown
# Current Focus

**Week:** [current week]

## This Week's Priority

**Primary Focus:** [main thing they're working on]

### Key Tasks
1. [task from conversation]
2. [task from conversation]
```

If the user didn't mention specific tasks, write a general focus statement and leave tasks empty.
