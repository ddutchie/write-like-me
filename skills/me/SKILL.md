---
name: me
description: Writes in the user's own voice using their saved style profile. Use for anything the user will send or publish as themselves (emails, Slack, PRs, posts, docs). /me init sets it up.
license: MIT
metadata:
  version: "0.1.0"
---

# me

Write the way the user writes: their words, rhythm and habits, not the default AI voice.

The user's voice lives in a style profile, a markdown file this skill creates and keeps up to date. This file tells you how to set it up, apply it and improve it.

## When this applies

Use the profile for text the user will **send or publish as themselves**, such as emails, Slack or chat messages, PR descriptions, commit messages, issue comments, social posts, blog drafts, docs and cover letters.

Do **not** restyle your own replies to the user. Explanations, plans and status updates stay in your normal voice unless the user asks otherwise.

## Find the profile

Look in this order and use the first file that exists:

1. `.me/STYLE.md` in the current project. This is a project voice, such as a company's docs style. It **overrides** the global profile section by section; anything it leaves out still comes from the global profile.
2. `~/.me/STYLE.md`, the user's global voice.
3. `STYLE.md` next to this `SKILL.md`, for environments without a persistent home directory, such as claude.ai uploads.

If none exists and the user asked for writing, say in one line that no profile is set up, offer `/me init`, and write the draft in plain, neutral prose that follows `references/ai-tells.md`. Don't block on setup.

## Commands

Read the first word of the arguments: `$ARGUMENTS`.

| Argument | Do this |
|---|---|
| `init` | Run the setup interview (below) |
| `learn` | Learn from the user's edits (below) |
| `show` | Summarise the profile in 5–8 bullets and give its path |
| `edit <change>` | Apply the change to the profile, show the diff and save once the user confirms |
| *(any other text)* | Rewrite that text in the user's voice |
| *(empty)* | If no profile exists, run `init`. Otherwise show the profile path and these commands |

## Writing in the user's voice

1. Load the profile, and read `references/ai-tells.md` once per session.
2. Choose the **register** that fits the destination (Slack, email, PR, post and so on). If the profile has no entry for it, use the nearest one.
3. Write the draft. The **samples** outrank the rules: when they disagree, sound like the samples.
   - **Don't turn the user into a caricature.** Quirks such as dropped apostrophes, "…", missing question marks, CAPS or "!!" appear only now and then in real writing. Use each one about as often as it appears in the samples: a few per message at most, never all of them at once. A draft stuffed with quirks reads like a parody. A draft with none reads like AI.
4. Check the draft against the profile's **Never** list and against `references/ai-tells.md`, then fix every hit.
5. Keep the facts. Change voice, not meaning. Never invent opinions, experiences or commitments the user didn't give you.
6. Deliver only the draft, with no preamble like "Here's a version in your voice:". When you had to guess at something important, add at most one line after the draft.

For length, match the register. If the user's Slack messages are 12 words long, yours should be too.

## `init`: build the profile

Aim for about five minutes. Ask **one question at a time** and wait for each answer. Take the questions from `references/interview.md`.

1. **Samples first.** Ask for 2–5 things the user actually wrote, such as Slack messages, emails, a PR description or a post. Real samples tell you far more than the answers do. If the user has none, go on with the interview only and mark the profile `confidence: low`.
2. **Interview.** Ask the core questions in `references/interview.md`. Skip any question the samples already answered.
3. **Analyse.** Pull out the concrete patterns: typical sentence length, capitalisation, punctuation (em dashes? Oxford comma? `...`?), contractions, emoji, spelling variant, how the user opens and closes, recurring phrases, how they hedge or push back, and what they never do. Report patterns you observed, not impressions. "Lowercase in Slack, sentence case in email" beats "casual tone".
4. **Draft.** Fill in `references/profile-template.md`. Quote short real excerpts under **Samples**.
5. **Confirm.** Show the draft and ask what's wrong. Then write two short test pieces, such as a Slack reply and an email, and ask whether they sound right. Revise until the user is happy.
6. **Save.** Ask whether this is the global voice (`~/.me/STYLE.md`) or a project voice (`.me/STYLE.md`). Create the folder if needed and write the file. If you can't write files (claude.ai), print the full profile in a code block and tell the user to save it as `STYLE.md` inside their copy of this skill folder, then re-upload it.

## `learn`: improve from edits

The best signal is what the user changes in your drafts.

1. Get the pair: your draft, and the version the user actually sent. Look for it in the conversation, or ask the user to paste it.
2. Diff the two. Sort each change into **voice** (wording, rhythm, formality, punctuation, length) or **content** (facts, decisions, scope). Learn only from voice changes.
3. Suggest at most 3 new or changed rules, each quoting the edit it came from. Leave out one-off changes; a rule needs a pattern, or a change the user says is always true.
4. Once the user approves, update the profile and add a dated line to its **Learned from edits** log.

When you notice the user heavily rewrote one of your drafts during normal work, offer `/me learn` in one line. Don't run it without asking.

## Rules for the profile file

- Never change the profile without the user's approval. Show the diff first.
- Keep it under about 300 lines. Merge rules that overlap, and trim old samples before adding new ones.
- The profile is personal. Don't copy it into other projects, commits or shared files unless the user asks.
