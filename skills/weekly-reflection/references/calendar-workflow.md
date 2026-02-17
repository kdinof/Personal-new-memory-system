# Calendar Integration Workflow

## Google Calendar MCP: step-by-step process

Uses native MCP server `@cocal/google-calendar-mcp`. See weekly-planning skill's [calendar-integration.md](../../weekly-planning/references/calendar-integration.md) for setup instructions.

### Step 1: List available calendars

```
list-calendars
```

Identify the primary calendar and any secondary calendars to include in the analysis.

### Step 2: Retrieve events for the week

```
list-events:
  calendarId: "primary"
  timeMin: "YYYY-MM-DDT00:00:00Z"
  timeMax: "YYYY-MM-DDT23:59:59Z"
```

Dates `timeMin`/`timeMax` are taken from the injected context: "For calendar query (retro)" line.

Repeat for each relevant calendar if needed.

### Step 3: Process the response

Extract and calculate:
- Total number of events
- Meeting hours (sum of durations)
- Busy vs free time
- Deep work blocks (2+ hours without events)
- Meeting density by day
- Most loaded / lightest day

## Error Handling

**Calendar unavailable:**
- Note in Phase 1: "Could not load calendar. Analysis based on retrospectives."
- Continue with daily retro + weekly summary
- In Phase 3: recommend connecting calendar

**Empty calendar (0 events):**
- Note: "No events found for this week"
- Check daily retro for meeting mentions
- If mismatch, flag tracking issue
