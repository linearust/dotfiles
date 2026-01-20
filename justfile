# Claude Code QA automation

set positional-arguments

default: all

# ─────────────────────────────────────────────────────────────────────────────
# Commands
# ─────────────────────────────────────────────────────────────────────────────

# Run a specific QA task
qa task:
    @echo ""
    @echo "━━━ QA: {{task}} ━━━"
    @echo ""
    @claude -p "$(cat commands/qa-{{task}}.md)" --dangerously-skip-permissions
    @echo ""

# Run all QA tasks
all: (qa "structure") (qa "naming") (qa "logic") (qa "errors") (qa "duplication") (qa "coupling") (qa "complexity") (qa "types") (qa "consistency") (qa "docs") (qa "versions")
    @echo "━━━ All QA tasks complete ━━━"

# List available QA tasks
list:
    @ls -1 commands/qa-*.md | sed 's|commands/qa-||;s|\.md||'
