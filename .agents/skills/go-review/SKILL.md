---
name: go-review
description: Independently review Go changes and test quality.
---

# go-review

Use a fresh context. Read approved spec, AGENTS.md, Git diff including relevant untracked files, and tests. Do not modify files. Check requirement coverage, assertion strength, edge cases, error semantics, resource cleanup, race risks, dependency justification and scope. Check whether test expectations or quality gates were weakened. Run make check. Report blocker/major/minor findings with file and line, impact and correction. Conclude PASS, CHANGES REQUIRED or BLOCKED based on actual evidence.
