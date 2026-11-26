# Go Agent Starter
Architecture-neutral Go template for specification-first, supervised TDD with Pi or Oh My Pi (OMP). Engineering artifacts in English; conversation in German by default.

## Start
Create a new repository from this template (enable Template repository in GitHub settings). Open Pi in the root and run `/bootstrap <project description>`. For OMP, or if prompt discovery differs, ask the agent to read `.agents/skills/project-bootstrap/SKILL.md` explicitly. Use explicit skill paths for any runtime that does not discover them automatically.

After approving project context, initialize the module with your own module path and Go 1.24 or later. Select compatible explicit versions of staticcheck and govulncheck, then run `go get -tool honnef.co/go/tools/cmd/staticcheck@VERSION` and `go get -tool golang.org/x/vuln/cmd/govulncheck@VERSION` (replace VERSION with reviewed versions). Commit go.mod and go.sum. Create the first package through TDD. Run `make doctor` and `make check` once Go packages exist. Race detection requires a compatible platform/toolchain. CI action tags should be pinned to reviewed SHAs for production.

## Workflow
1. Export a ticket to a local file using templates/ticket.md, or use a separately configured read-only tracker integration.
2. `/spec <ticket path>` then `/spec-review <spec path>`; approve the exact revision manually.
3. `/red <spec path and AC>`; verify expected failure.
4. `/green`; verify targeted and full tests.
5. `/refactor`; run make check.
6. `/review` in a fresh agent session; human merge approval.

## Scope
No production application, Go module path, credentials, or architectural framework is predefined. Jira/Trello adapters, Agentflow, machine-enforced approvals, test evidence capture and sandbox restrictions are future work. Skills are advisory, not technical enforcement. CI deliberately skips Go checks before go.mod exists; after initialization a green run is required. Configure branch protection separately.
