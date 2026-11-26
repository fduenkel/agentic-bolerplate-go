---
name: go-idioms
description: Evaluate idiomatic Go design and package boundaries.
---

# go-idioms

Prefer cohesive packages and concrete types. Introduce consumer-owned interfaces only for actual needs. Keep exported API small. Prefer explicit dependencies, useful zero values and standard library. Avoid speculative generics, DI containers and utility packages. Preserve error contracts. Start synchronously; establish cancellation, ownership and cleanup for concurrency. Justify each abstraction. Consult https://go.dev/wiki/CodeReviewComments and https://go.dev/wiki/TestComments.
