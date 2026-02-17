# SMART Task Framework

Transform vague tasks into actionable, trackable items.

## Criteria

### S - Specific

**Question:** What exactly needs to be done?

| Vague | SMART |
|-------|-------|
| Work on course | Create 15 slides for Block 2: Prompt Engineering |
| Prepare meeting | Write 3-point agenda for team strategy call |
| Do marketing | Draft LinkedIn post about Claude Code launch |
| Fix bugs | Resolve authentication timeout in login flow |

**Specificity checklist:**
- [ ] Single action verb (create, write, send, review)
- [ ] Clear deliverable (document, email, code)
- [ ] Context included (project name, person, location)

### M - Measurable

**Question:** How will I know it's done?

| Unmeasurable | Measurable |
|--------------|------------|
| Improve presentation | Add 5 case study slides to presentation |
| Work on sales | Contact 3 leads from conference list |
| Write content | Publish 500-word post on AI tools |
| Test feature | Run 10 test scenarios for checkout flow |

**Measurement types:**
- Quantity: "3 emails", "5 slides", "10 tests"
- Binary: "sent", "published", "deployed"
- Checklist: "all 4 sections reviewed"

### A - Achievable

**Question:** Can this realistically be done today?

**Time estimates:**
- < 30 min: Single task, no splitting needed
- 30 min - 2 hours: Single focused task
- 2-4 hours: Consider splitting into 2 tasks
- > 4 hours: Must split into subtasks

**Splitting example:**
```markdown
# Too big
- [ ] Build company website

# Split into achievable
- [ ] Design homepage wireframe (2h)
- [ ] Set up Next.js project structure (1h)
- [ ] Create header component (1h)
- [ ] Implement hero section (2h)
```

**Resource check:**
- [ ] Have required information/access?
- [ ] Dependencies completed?
- [ ] Tools/accounts available?

### R - Relevant

**Question:** Does this align with current priorities?

**Priority filter (check against goals):**
1. Does it bring revenue? (direct or indirect)
2. Does it build personal brand?
3. Does it reduce future work?

If no to all three → consider deferring or dropping.

**Alignment check:**
- [ ] Supports Q1 goals?
- [ ] Relates to active project?
- [ ] Requested by stakeholder?

### T - Time-bound

**Question:** When is this due?

**Date assignment rules:**
- Hard deadline exists → use that date
- Dependency on other task → day after dependency
- No deadline → assign based on priority:
  - 🔺 Highest: Today
  - ⏫ High: This week
  - 🔼 Medium: This or next week
  - 🔽 Low: This month
  - ⏬ Lowest: No date (someday)

## Transformation Examples

### Example 1: Vague Work Task
```markdown
# Before
- [ ] Работать над курсом

# After (SMART)
- [ ] Создать 10 слайдов для Блока 2: Основы prompt engineering ⏫ 📅 2026-01-15
  - [ ] Написать структуру слайдов (outline) 📅 2026-01-14
  - [ ] Найти 3 примера хороших промптов 📅 2026-01-14
  - [ ] Оформить слайды в Keynote 📅 2026-01-15
```

### Example 2: Vague Meeting Prep
```markdown
# Before
- [ ] Подготовиться к встрече с team

# After (SMART)
- [ ] Написать agenda для встречи с team (3 пункта) ⏫ 📅 2026-01-14
- [ ] Собрать метрики продаж за декабрь (таблица) 📅 2026-01-14
- [ ] Подготовить 2 вопроса по стратегии Q1 📅 2026-01-14
```

### Example 3: Recurring Habit
```markdown
# Before
- [ ] Заниматься спортом

# After (SMART)
- [ ] CrossFit тренировка (1 час) 🔼 🔁 every Monday, Wednesday, Friday 📅 2026-01-15
```

## Quick Transform Template

For any vague task, answer:

1. **What** exactly? → Action + deliverable
2. **How much**? → Number or completion criteria
3. **How long**? → If >2h, split
4. **Why now**? → Ties to which goal
5. **By when**? → 📅 YYYY-MM-DD

Result format:
```markdown
- [ ] [Action verb] [specific deliverable] [for/about context] [priority] 📅 [date]
```
