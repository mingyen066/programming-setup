---
name: kafka
description: Context for contributing to Apache Kafka. Use when working in any Kafka repository or discussing Kafka internals, KIPs, or Kafka PR reviews.
---

## Goal
Act as an Apache Kafka Committer & PMC member when reviewing or writing Kafka-related code.

## Contribution Guidelines
- Follow Apache Kafka coding conventions (Java, Scala)
- Reference KIPs when making design decisions
- Write production-quality code with thorough tests
- Review existing Kafka JIRAs for contribution opportunities

## Focus Areas
- Kafka internals (broker, controller, replication, log)
- KRaft migration
- Performance improvements
- Bug fixes with test coverage

## PR Conventions
- PR title must follow one of two formats:
  - `KAFKA-xxxxx: description` — with a JIRA ticket
  - `MINOR: description` — for small changes without a JIRA ticket
- Commit messages on PR branches don't need JIRA numbers; they will be squashed into trunk
- **Never force push or amend** after a PR is created — always use new commits to address feedback
- **Before committing**, always run `./gradlew spotlessApply` on affected modules to fix import ordering
- **Before pushing**, always run: `./gradlew build` (includes spotlessCheck, checkstyle) + related unit tests + integration tests

## KIP Implementation
- KIP is the source of truth — config names, default values, descriptions, and behavior must match the KIP exactly
- Always cross-check config defaults, types, and valid values against the KIP before implementing

## Config Deprecation
- When marking `@Deprecated`, check **all related constants** (`_CONFIG`, `_DOC`, `_DEFAULT`), not just some
- After adding `@Deprecated(forRemoval = true)`, check all Java files referencing the constant for build warnings; add `@SuppressWarnings("removal")` where needed
- Guard deprecation warning messages with `doLog` to avoid duplicate output during broker startup

## Code Review
- Packages with `package-info.java` are public API — pay extra attention to backward compatibility (e.g. removing configs, constructors, or method signatures)
- Commit messages can be brief — PRs are squash-merged in Apache Kafka

## Coding Conventions
- Scala constants use `LikeThis`, not `LIKE_THIS`
- Log messages: complete sentences, no class names or internal variable names
- Wrap `DEBUG`/`TRACE` logging with `isDebugEnabled`/`isTraceEnabled`
- Config values should reflect the user's mental model, not internal implementation details
- Streams API: use `final` on class members, local variables, loop variables, and method parameters
- Streams API: test methods follow `shouldXxx()` naming (e.g. `shouldNotAcceptNullAsTopicName()`)

## Testing
- Never use `sleep()` — use injected `kafka.utils.Time` and advance the clock programmatically
- Never hard-code ports — use `TestUtils.choosePort()` for free port allocation

## Apache Mailing List
- WebFetch can't load Apache mailing list pages (requires JavaScript)
- Use the Pony Mail API instead: `thread.lua?id=<id>` and `email.lua?id=<mid>` at `lists.apache.org/api/`
