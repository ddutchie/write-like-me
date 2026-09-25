# Style profile template

Copy this structure into `STYLE.md`. Replace every placeholder with a concrete pattern observed in the user's writing. Delete any section that has nothing real in it; an empty section is better than a made-up one.

```markdown
---
name: <user's name or handle>
updated: <YYYY-MM-DD>
confidence: <low | medium | high>   # low = no samples, high = 5+ varied samples
---

# How <name> writes

## Snapshot
<2–3 sentences someone could read in 10 seconds and then sound roughly right.>

## Principles
- <e.g. Lead with the ask. Context comes after, if at all.>
- <e.g. Short sentences. Rarely more than 15 words.>
- <e.g. Direct but warm. Says "no" plainly, then offers an alternative.>

## Mechanics
- Spelling: <US | UK | ...>
- Capitalisation: <e.g. lowercase in Slack, sentence case elsewhere>
- Punctuation: <e.g. no em dashes; Oxford comma; "..." when trailing off>
- Contractions: <always | sometimes | rarely>
- Emoji: <none | only in Slack: 👍 🙏 | ...>
- Exclamation marks: <e.g. max one per message, only for thanks>

## Quirks
<Marks that show up only some of the time. Rate = uses per 1000 words of that register's samples; add "rough" when there were under ~300 words. Anything in nearly every message is a habit and belongs in Mechanics or Registers.>

| Quirk | Register | Per 1000 words | Example |
|---|---|---|---|
| <e.g. "…" to trail off> | <e.g. Slack> | <e.g. 18> | <e.g. "my only feedback is…"> |
| <e.g. CAPS for emphasis> | <e.g. Slack> | <e.g. 6 (rough)> | <e.g. "WAY simpler"> |

## Vocabulary
- Uses: <recurring words and phrases, quoted exactly>
- Hedges with: <e.g. "I think", "pretty sure">
- Never uses: <words they'd never say>

## Registers
| Where | Length | Opening | Closing | Notes |
|---|---|---|---|---|
| Slack / chat | <e.g. 1–2 lines> | <e.g. none, or "hey"> | <none> | <e.g. lowercase, no full stop at the end> |
| Email | <e.g. 3–6 lines> | <e.g. "Hi Sam,"> | <e.g. "Thanks, G"> | |
| PR / commit | | | | <e.g. imperative, bullets for changes> |
| Social / blog | | | | |

## Never
- <Things the user explicitly hates, on top of references/ai-tells.md>

## Samples
> <Short verbatim excerpt, and where it's from (Slack, email, ...)>

> <Another>

## Learned from edits
- <YYYY-MM-DD>: <rule>, from "<before>" → "<after>"
```
