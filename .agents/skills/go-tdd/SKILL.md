---
name: go-tdd
description: Implement approved Go behavior with strict Red-Green-Refactor.
---

# go-tdd

Read the approved spec and AGENTS.md. Verify approval matches current content. Run go test -count=1 ./...; stop on unexpected failures. Select one criterion. RED: write a minimal behavioral test, add only compiling API stubs if needed, run go test -count=1 -v on the exact package and test, verify intended assertion failure. Stop for approval in supervised mode. GREEN: preserve test expectations, implement minimal behavior, run targeted and full tests. REFACTOR: change only for concrete benefit, rerun tests and make check. Record criterion, commands, observed results and changed files. Repeat only when requested. If behavior already exists, verify it without manufacturing RED.
