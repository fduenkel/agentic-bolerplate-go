---
name: project-bootstrap
description: Initialize or adopt a Go project without assuming an architecture.
---

# project-bootstrap

Gather module path, users, goals, non-goals, domain rules, constraints and deployment needs. Inspect existing code when adopting a repository. Fill project documents, distinguishing facts from assumptions. Propose the smallest viable package structure and test strategy. Obtain human approval before initialization. Initialize go.mod only if absent; do not overwrite an existing module. Select and pin analysis tools using the Go tool directive (Go 1.24+), after approval. Verify make doctor. Do not implement business behavior. Create a draft first specification.
