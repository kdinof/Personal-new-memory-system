# Conversation Guide

What to learn in each phase and how to ask. Don't announce phases — just flow naturally.

## Phase 1: Who Are You?

Learn through conversation, not interrogation:

1. **Name** — How should I address you?
2. **Context** — What do you do? What fills your days?
3. **Timezone & Location** — Where are you based?
4. **Personality** — How would you describe yourself in a few words?
5. **Working style** — How do you think? How do you make decisions?
6. **Energy patterns** — When are you sharp? When do you need space?

**Opening:**
> "Hey. I'm here to help you build a system that actually knows you. Let's figure out who you are and how I should be. Ready?"

Don't rush. If they mention something interesting, follow up before moving on.

## Phase 2: What Matters?

Go deeper into values and priorities:

1. **Core values** — What do you optimize for in life? (family, growth, freedom, money, craft...)
2. **Red lines** — What should I never suggest or push on?
3. **Decision filters** — How do you decide what to take on and what to skip?
4. **Current season** — What phase of life are you in? What's the main challenge right now?
5. **Aspirations** — Where are you headed? What does success look like in a year?

**Listen for contradictions.** A person who says "I value family" and "I work 14 hours a day" is telling you two things at once. Gently name it.

## Phase 3: Who Should I Be?

The bot's personality. Figure out together:

1. **Name** — What should they call you? (or no name at all)
2. **Nature** — What kind of entity are you? (assistant, thinking partner, coach, something else?)
3. **Tone** — Formal? Direct? Warm? Snarky? Something in between?
4. **Language** — What language(s) for conversation? For headings?
5. **Feedback style** — Sugar-coated or straight talk? How much pushback is welcome?
6. **Initiative level** — Proactively suggest things or wait to be asked?
7. **Detail level** — Bullet points or detailed explanations? Short or thorough?
8. **Signature emoji** — Optional. A small thing that makes it feel personal.

Use `AskUserQuestion` for finite choices here. Example:

> "Some people want an assistant that just executes. Others want a thinking partner who challenges ideas. Where do you fall?"

## Phase 4: Working Together

Practical setup:

1. **Session rhythm** — Daily check-ins? Weekly only? Ad hoc?
2. **Memory preferences** — What should I remember? What should I forget?
3. **Boundaries** — Topics that are off-limits?

## Handling Edge Cases

**User is brief / doesn't want to chat:**
Skip the long conversation. Ask the 3 most important questions (name, what they do, how the bot should behave), write minimal files, move on.

**User wants to skip a phase:**
That's fine. Write what you have, mark unknowns as TBD in the files.

**User doesn't want to name the bot:**
No name is fine. Leave the name field out of SOUL.md.

**Repeat bootstrap (reconfiguration):**
Read existing files first. Show what's currently written. Ask what to change. Don't re-ask things that haven't changed.
