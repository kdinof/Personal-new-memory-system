# Calendar Integration

Working with Google Calendar via native MCP server (`@cocal/google-calendar-mcp`).

## Setup

Add to Claude Code MCP config (`.claude/settings.json` or global settings):

```json
{
  "mcpServers": {
    "google-calendar": {
      "command": "npx",
      "args": ["@cocal/google-calendar-mcp"],
      "env": {
        "GOOGLE_OAUTH_CREDENTIALS": "/path/to/your/gcp-oauth.keys.json"
      }
    }
  }
}
```

See [github.com/nspady/google-calendar-mcp](https://github.com/nspady/google-calendar-mcp) for OAuth setup instructions.

## Available Tools

### Reading
- `list-calendars` — list all accessible calendars
- `list-events` — retrieve events with date-based filtering
- `get-event` — fetch specific event details by ID
- `search-events` — query events using text search
- `get-freebusy` — check availability across multiple calendars
- `get-current-time` — current date/time in calendar timezone

### Management
- `create-event` — create new events / time blocks
- `update-event` — modify existing events
- `delete-event` — remove events (ALWAYS with user confirmation!)
- `respond-to-event` — accept, decline, or tentatively respond to invitations

### Utility
- `list-colors` — available event color options
- `manage-accounts` — add, list, or remove Google accounts

## Reading Events

```
list-events:
  calendarId: "primary"
  timeMin: "YYYY-MM-DDT00:00:00Z"
  timeMax: "YYYY-MM-DDT23:59:59Z"
```

Take dates from injected `# Current Date Context`, do NOT compute manually.

## Creating Time Blocks

Create in the **"Planning"** calendar (not primary). Always ask for user confirmation.

```
create-event:
  calendarId: "<your-planning-calendar-id>"
  summary: "[emoji] [type]: [task name]"
  description: "OKR: [which KR]\nSource: [where the task came from]"
  start: "YYYY-MM-DDT09:00:00"
  end: "YYYY-MM-DDT11:00:00"
```

**Time block types:**
- `Deep Work` — deep focused work (2-4 hours)
- `Admin` — administrative tasks (30-60 min)
- `Communication` — communication and meetings
- `Planning` — planning and review

## Checking Availability

```
get-freebusy:
  calendarIds: ["primary", "<planning-calendar-id>"]
  timeMin: "YYYY-MM-DDT00:00:00Z"
  timeMax: "YYYY-MM-DDT23:59:59Z"
```

## Error Handling

**Calendar unavailable:**
- Note in report: "Could not load calendar. Analysis based on retrospectives only."
- Continue with daily retro + weekly summary
- Recommend connecting calendar in recommendations

**Empty calendar (0 events):**
- Note: "No events found for this week"
- Check daily retro for meeting mentions
- If mismatch, flag tracking issue
