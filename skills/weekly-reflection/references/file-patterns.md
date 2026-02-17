# File Patterns

Паттерны поиска файлов для weekly reflection. Все даты берутся из injected date context.

## Daily Retrospectives

- Путь: `retros/YYYY/WXX/`
- Файлы: `YYYY-MM-DD.md`
- Glob: `retros/YYYY/W{RETRO_WEEK_NUM}/YYYY-MM-*.md`

Подставить YYYY и RETRO_WEEK_NUM из injected context (переменные RETRO_WEEK и RETRO_WEEK_RANGE).

## Previous Week's Summary

- Путь: `retros/YYYY/`
- Файлы: `YYYY WXX.md` или `WXX Weekly.md`
- Glob: `retros/YYYY/*W*.md`

Искать summary за неделю, предшествующую RETRO_WEEK.

## Calendar Events

Автоматически загружаются через Google Calendar integration.
См. [calendar-workflow.md](calendar-workflow.md) для деталей.
