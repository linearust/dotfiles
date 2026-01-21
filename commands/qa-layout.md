Ultrathink.

Verify project layout conventions.

## Goal

Root directories follow ecosystem conventions — no confusion, no fragmentation.

## Checks

| Check | Pass |
|-------|------|
| Language conventions | Directory names match ecosystem standards (Rust: `tests/`, `benches/`, `examples/`) |
| No fragmentation | Related tooling consolidated (not split across directories) |
| Clear purpose | Each root directory has obvious, distinct purpose |

## Process

1. List root directories and identify their purpose
2. Check against language/ecosystem conventions
3. Look for fragmented tooling (multiple dirs serving same feature)
4. Consolidate or rename as needed

## Output

Report: `directory — issue — fix`

Do not ask for confirmation. Analyze and implement directly.
