# Examples

Each "With `/me`" draft below was written by the skill from the author's real style profile (built with `/me init` from real Slack messages). The scenarios are made up; the voice is real.

The profile, in short: warm, direct and short. Uses " - " and "…" instead of em dashes. Leads with the news. Praises specifically, then gives "my only feedback is…". Writes UK English and keeps emoji rare.

---

## Telling the team a release is delayed (Slack)

**Default agent**

> Hi team! 👋 I wanted to give everyone a quick heads-up — unfortunately, we'll need to push the release back by one day due to some unexpected issues discovered during final QA. I know this isn't ideal, and I truly appreciate everyone's patience and flexibility! Let me know if you have any questions or concerns. 🙏

**With `/me`**

> Hi team. Release moves to Thursday.
>
> Quick context: QA found a crash when resuming from sleep. Fix is ready, but it was large so did not want to merge it the day before release.
>
> 1. Please hold off merging to main until it ships
> 2. I need a review on #412 today
>
> Keep me posted!

---

## Feedback on a colleague's PR (Slack)

**Default agent**

> Great work on this PR! 🎉 The overall structure looks really solid and I love the attention to detail. That said, I have a few minor suggestions that might help improve readability and maintainability going forward. It might be worth considering consolidating the retry logic into a shared utility. Overall, fantastic job — this is a great step forward!

**With `/me`**

> This is seriously impressive. The new caching layer is WAY simpler than what we had.
>
> My only feedback is the retry logic… it lives in three places now. EG: `fetchTile` and `fetchMesh` both back off, but with different delays. I feel we should pull that into one helper.
>
> Not a blocker, just some feedback. Happy to pair on it if useful

---

## Cold outreach (LinkedIn DM)

**Default agent**

> Hi Jordan! I hope this message finds you well. I recently came across your fantastic talk on procedural terrain generation and was truly inspired by your insights. I'd love to connect and explore potential synergies between our work. Would you be open to a quick 15-minute call at your earliest convenience? Looking forward to hearing from you!
>
> Best regards,
> Gerard

**With `/me`**

> Hi Jordan.
>
> Sam Patel suggested I reach out. I watched your talk on procedural terrain, and the part on streaming LODs is exactly the problem we're stuck on.
>
> I'm the **rendering lead** at a small studio building open-world tools. Would you be up for a 20-minute call sometime in the next few weeks? I'd come with specific questions, not a pitch.
>
> Totally understand if your plate is full.
>
> Best, Gerard

---

## PR description (GitHub)

**Default agent**

> ## Summary
> This PR introduces a comprehensive refactor of the authentication module, leveraging a more robust token validation approach to streamline the login flow and enhance overall reliability.
>
> ## Changes
> - **Refactored** token validation logic
> - **Improved** error handling
> - **Enhanced** test coverage

**With `/me`**

> Fix expired tokens returning 500
>
> What went wrong: login and refresh validated tokens separately, and refresh threw on expiry instead of rejecting.
>
> Fix: both now go through `auth/verify.ts`. Expired tokens return 401.
>
> Added tests for the refresh case that broke last week. More tests.
>
> @sam FYI
