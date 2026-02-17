---
name: weekly-planning
description: >-
  Weekly planning automation for entrepreneurs based on Peter Drucker framework.
  Collects tasks from daily retros, OKR strategy, Google Calendar, and tasks.md,
  then produces a prioritized weekly plan with time blocks in Russian.
  Use when the user wants to: (1) plan the upcoming week with priorities and time blocks,
  (2) review next week's schedule and align it with OKR goals,
  (3) do a Drucker-style time analysis (analyze/eliminate/time block),
  or says "let's plan the week", "plan W05", "weekly planning", "what's next week look like".
allowed-tools: [Read, Glob, Grep, Edit, Write, mcp__google-calendar__*]
---

# Weekly Planning

AI Time Management Coach на основе Peter Drucker Framework. Максимизирует productivity ratio (outputs/inputs) через анализ, elimination и time blocking.

## Ключевые метрики

- **Goal Alignment Score** — % времени на OKR (target: 70%+)
- **Time Quality Ratio** — Strategic / Operational time
- **Peak Hours** — лучшие часы для deep work
- **Elimination candidates** — что убрать/оптимизировать

## References

| Файл | Читать когда |
|------|-------------|
| [references/drucker-framework.md](references/drucker-framework.md) | Применяешь Drucker Analysis (Analyze / Eliminate / Time Block) |
| [references/data-sources.md](references/data-sources.md) | Ищешь calendar IDs, файлы ретро, OKR |
| [references/calendar-integration.md](references/calendar-integration.md) | Работаешь с Google Calendar через MCP |
| [references/output-template.md](references/output-template.md) | Генерируешь финальный отчёт |

## Инструкции

- Весь вывод на русском (кроме технических терминов)
- Начать с короткого чеклиста (3-7 пунктов) что будет сделано
- Для создания/изменения/удаления событий в календаре — ВСЕГДА спрашивать подтверждение

## Workflow

### Step 0: Определить временные рамки

Использовать переменные из injected `# Current Date Context` (hook inject-dates.sh).
Ключевые: `WEEK`, `PREVIOUS_WEEK`, `CURRENT_WEEK_RANGE`, `TWO_DAYS_AGO`.

**Логика:** воскресенье → планируем на следующую неделю; остальные дни → на текущую.

### Step 1: Сбор данных

Параллельно собрать из всех источников. Паттерны поиска и конфигурация в [references/data-sources.md](references/data-sources.md).

1. **Daily retros** — Glob + Read за прошлую неделю (5-7 файлов)
2. **Weekly retro** — summary за прошлую неделю
3. **OKR** — стратегические цели на год
4. **Календарь** — события на предстоящую неделю + свободные слоты. См. [references/calendar-integration.md](references/calendar-integration.md)
5. **tasks.md** — текущие задачи

**Что извлекать:**
- Незавершённые задачи и идеи из ретро
- Проблемы, требующие решения

### Step 2: Drucker Analysis

Применить трёхшаговый фреймворк к данным прошлой недели. Детали в [references/drucker-framework.md](references/drucker-framework.md).

1. **ANALYZE** — категоризировать события (Strategic / Operational / Recurring / Reactive / Questionable), посчитать время по категориям
2. **ELIMINATE** — выявить кандидатов на удаление/оптимизацию (meetings без outcomes, дубли, то что можно сделать async)
3. **TIME BLOCK** — предложить protected deep work блоки (min 2x 2h), расписание по энергии (утро = strategic, день = meetings, вечер = admin)

### Step 3: Goal Alignment Score

Рассчитать соответствие времени стратегическим целям:
```
Score = (Часы на OKR / Общие рабочие часы) x 100%
```
Для каждой цели: target vs actual, статус (on-track / off-track).
Alerts: 3+ дней без прогресса → warn, actual < 50% target → alert.

### Step 4: Приоритизация задач

Критерии: Urgency → Strategic Alignment → Dependencies → Energy Requirements.

Группировка:
- **Must Do** (high impact + urgent)
- **Should Do** (strategic)
- **Nice to Have / Delegate**

Ограничения: max 3 major tasks в день, 15-20% buffer на непредвиденное.

### Step 5: Обновление tasks.md

Обновить `tasks.md` — добавить новые задачи, пометить устаревшие. Сохранять существующую структуру, не перезаписывать весь файл.

### Step 6: Предложить расписание и time block'и

На основе календаря предложить:
- Когда deep work (лучшие слоты)
- Когда meetings и admin
- Резерв на непредвиденное

Опционально создать time block'и в календаре "Planning" (с подтверждением пользователя). Детали в [references/calendar-integration.md](references/calendar-integration.md).

### Step 7: Output

Сгенерировать отчёт по шаблону [references/output-template.md](references/output-template.md).

## Guardrails

**Даты:** ВСЕГДА из `# Current Date Context`, НЕ вычислять вручную. Timezone настраивается под пользователя.

**Calendar:** Использовать `list-events`, `create-event` и другие инструменты Google Calendar MCP. Time block'и только в "Planning", не primary.

**tasks.md:** Сохранять существующие задачи, добавлять новые с сохранением структуры.

**Приоритизация:** Если задач > 15-20, предложить делегирование/отсрочку. Отделять "must do" от "nice to have".
