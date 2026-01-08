Ultrathink.

Update all dependency versions to latest stable.

## Goal

Keep dependencies current — no outdated versions.

## Checks

| Check | Pass |
|-------|------|
| Cargo dependencies | Latest compatible versions |
| Docker images | Latest stable tags |
| Pinned versions | Updated across all config files |

## Process

1. Run `cargo update` for Cargo.lock
2. Check for outdated Cargo.toml constraints
3. Scan configs for pinned versions (docker images, tools)
4. Update to latest stable versions
5. Run tests if they exist

## Output

Report: `file — dependency — old → new`

Do not ask for confirmation. Analyze and implement directly.
