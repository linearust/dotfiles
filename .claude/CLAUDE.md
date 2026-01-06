# Development Guidelines

> **⚠️ DO NOT MODIFY** unless explicitly ordered by the user.

**Stack:** Axum • PostgreSQL + SQLx • Maud • HTMX + Tailwind CSS • tower-sessions

---

## Principles

| Principle | Meaning |
|-----------|---------|
| Breaking changes encouraged | No backward compatibility concerns |
| Single standard | One way per use case |
| Single source of truth | Define once, reference everywhere |

---

## Style

- **Everything required** — no optional parameters or defaults
- **Fail fast** — clear errors at entry, no silent fallbacks
- **Constants over magic** — named values, not literals
- **Comments for AI** — minimal, explain why not what
- **Centralized config** — no hardcoded paths

---

## Routing

Routes by interaction type:

| Prefix | Purpose |
|--------|---------|
| `/pages/*` | Full page renders |
| `/forms/*` | Form submissions |
| `/actions/*` | HTMX partial updates |

**Conventions:**
- RESTful methods: GET, POST, DELETE, PATCH, PUT
- Path parameters: `/todos/{todo_id}`
- Handler names: `method_path` → `get_root`, `post_forms_todos`, `delete_actions_todos_id`
- Module structure mirrors routes: `handlers/pages/`, `handlers/forms/`, `handlers/actions/`

---

## UI

Minimal and functional — no decoration.

---

## Workflow

- Run tests after changes if they exist
- Never commit unless requested
