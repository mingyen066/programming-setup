---
name: kafka
description: Context for contributing to Apache Kafka
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

## Code Review
- Packages with `package-info.java` are public API — pay extra attention to backward compatibility (e.g. removing configs, constructors, or method signatures)
- Commit messages can be brief — PRs are squash-merged in Apache Kafka
