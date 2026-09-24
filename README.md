# write like me

**Your agent writes emails, Slack messages and PR descriptions for you. They don't sound like you.**

They sound like every other AI: "I hope this finds you well", "Let's dive in", em dashes everywhere, three bullet points with bold lead-ins. You end up rewriting everything, or you send it anyway and people can tell.

`me` is an [Agent Skill](https://agentskills.io) that fixes this. Run `/me init` once. It reads a few things you've actually written, asks about six quick questions and saves a style profile. After that, whenever your agent writes something *as you*, it writes in your voice.

```
/me init                          # 5-minute setup: samples + a short interview
/me reply to Sam: can't make thursday, suggest next week
/me learn                         # learn from how you edited the last draft
/me show                          # what the agent thinks your voice is
/me edit stop using "just"        # change the profile directly
```

The agent also uses the profile on its own when it drafts something you'll send, such as a commit message, a PR description or an email. You don't have to type `/me` every time.

See [EXAMPLES.md](EXAMPLES.md) for before-and-after samples.

## How it works

1. **Samples beat adjectives.** "Casual but professional" means nothing. Your real Slack messages show that you write in lowercase, never use a full stop at the end, and say "yep" instead of "yes". `init` builds rules from what you actually do.
2. **One file, yours.** Your voice lives in `~/.me/STYLE.md`, plain markdown that you can read and edit. It's never stored in the skill folder, so updates can't overwrite it.
3. **Registers.** You write differently in Slack and in an email to a stranger. The profile keeps rules for each place you write.
4. **It learns from your edits.** When you rewrite a draft, `/me learn` compares the two versions, separates voice changes from content changes, and suggests new rules. Nothing changes without your approval.
5. **An anti-AI list.** It ships with a list of [common AI tells](skills/me/references/ai-tells.md). Your profile can override any of them; if you really do love em dashes, keep them.

### Where your profile lives

| Path | Use |
|---|---|
| `.me/STYLE.md` (in a project) | A project voice, such as your company's docs style. Overrides the global profile section by section |
| `~/.me/STYLE.md` | Your personal voice, used everywhere |
| `STYLE.md` inside the skill folder | For claude.ai, which has no home directory (see below) |

## Install

### Claude Code

```
/plugin marketplace add ddutchie/write-like-me
/plugin install me@write-like-me
```

Then run `/me init`.

### Any agent (Cursor, Codex, Gemini CLI, Copilot, OpenCode, …)

```bash
npx skills add ddutchie/write-like-me
```

### Manually

Copy `skills/me/` into your agent's skills folder, for example `~/.claude/skills/me/`.

### Claude.ai

1. Download [`me.zip` from the latest release](https://github.com/ddutchie/write-like-me/releases/latest/download/me.zip) and upload it under **Customize → Skills**.
2. Run `/me init`. Claude.ai can't save files, so at the end it gives you your profile as text.
3. Save that text as `STYLE.md` inside the `me/` folder, zip the folder again and re-upload it.

## Privacy

Your profile and samples stay in plain files on your machine. The skill never sends them anywhere. `.gitignore` excludes `.me/`, but check before you commit a project-level profile to a public repo.

## Contributing

The most valuable contributions are:

- New entries for [ai-tells.md](skills/me/references/ai-tells.md), especially from languages other than English.
- Better interview questions.
- Before-and-after examples for [EXAMPLES.md](EXAMPLES.md), with permission from whoever wrote them.

Keep `SKILL.md` under 500 lines ([spec](https://agentskills.io/specification)), and bump `version` in `.claude-plugin/plugin.json` and `marketplace.json` on each release.

## License

MIT
