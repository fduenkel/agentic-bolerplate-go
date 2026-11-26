GO ?= go
.DEFAULT_GOAL := help
.PHONY: help doctor fmt fmt-check test race vet lint security coverage build check
help:
	@echo "make doctor | fmt | test | coverage | check"
doctor:
	$(GO) version
	@test -f go.mod || { echo "Initialize project first"; exit 1; }
	$(GO) tool staticcheck -version
	$(GO) tool govulncheck -version
fmt:
	$(GO) fmt ./...
fmt-check:
	@files="$$(gofmt -l .)"; test -z "$$files" || { printf '%s\n' "$$files"; exit 1; }
test:
	$(GO) test -count=1 ./...
race:
	$(GO) test -race -count=1 ./...
vet:
	$(GO) vet ./...
lint:
	$(GO) tool staticcheck ./...
security:
	$(GO) tool govulncheck ./...
coverage:
	$(GO) test -coverprofile=coverage.out ./...
	$(GO) tool cover -func=coverage.out
build:
	$(GO) build ./...
check: doctor fmt-check vet test race lint security build
