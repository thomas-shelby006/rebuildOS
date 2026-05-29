# v2.5 Review Response

Input: Claude feedback on v2.4 focused on context weight, stale brain state, PM stage state, sleep correction endpoint, daily learning overhead, duplicate planning/work-visibility files, command menu size, skeleton brain, recovery streaks, and system-note exit.

Accepted and implemented:
- session-start freshness check
- `BRAIN_SNAPSHOT.md`
- brain Last updated as a real field
- PM stage writeback and timestamp
- sleep correction graduation/maintenance criteria
- daily learning moved out of default night review
- command menu two-tier split
- demotion of daily planning to reference-only
- shorthand labeling for work visibility templates
- optional system-note exit
- recovery streak counters

Modified:
- Did not remove overlapping files; marked them reference/shorthand to avoid breaking existing links.
- Did not redesign preference persistence; v2.4 fixed the key loop and it should be tested before redesign.

Rejected/parked:
- No new large feature set before real use.
- No new public/social commitment device yet.
