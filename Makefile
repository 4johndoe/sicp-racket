install:
	raco pkg install sicp
	raco pkg install review

test:
	raco test sicp

lint:
	@echo "check codestyle"
	@(for f in $$(find sicp -name '*.rkt'); do raco review $$f; done)

.PHONY: test

default: test lint

.DEFAULT_GOAL := default