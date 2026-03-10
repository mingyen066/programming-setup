When creating pull requests, do not use templated sections like "## Summary", "## Test plan", or similar headers. Just write the PR description directly as plain text.

# Code Quality

When writing or reviewing code, always check:

- Code quality
- No silent failures or swallowed exceptions
- No resource leaks
- Thread safety
- Edge cases
- Performance in hot paths
- Test coverage
- Backward compatibility
- Contracts and invariants — flag violations even if not triggered by current usage (e.g. shared mutable state in `Iterable`/`Iterator`, broken API contracts)

## Python
- Most projects use venv — activate `.venv` when Python packages are not found
- When no venv exists, prefer `uv` over `pip` for speed

# Apache Kafka

## PR Conventions
- PR title must follow one of two formats:
  - `KAFKA-xxxxx: description` — with a JIRA ticket
  - `MINOR: description` — for small changes without a JIRA ticket
- Commit messages on PR branches don't need JIRA numbers; they will be squashed into trunk
- **Never force push or amend** after a PR is created — always use new commits to address feedback
- **Before pushing**, always run: `./gradlew build` (includes spotlessCheck, checkstyle) + related unit tests + integration tests

## Config Deprecation
- When marking `@Deprecated`, check **all related constants** (`_CONFIG`, `_DOC`, `_DEFAULT`), not just some
- After adding `@Deprecated(forRemoval = true)`, check all Java files referencing the constant for build warnings; add `@SuppressWarnings("removal")` where needed
- Guard deprecation warning messages with `doLog` to avoid duplicate output during broker startup
