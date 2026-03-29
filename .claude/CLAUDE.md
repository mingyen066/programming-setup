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
