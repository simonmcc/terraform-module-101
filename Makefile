.PHONY: all README.md tests

all: README.md

README.md:
	pre-commit run --all-files terraform_docs

fmt:
	terraform fmt

tests:
	cd tests/ ; go test

setup_macos:
	-brew tap liamg/tfsec
	-brew install pre-commit gawk terraform-docs tflint tfsec coreutils
	pre-commit install
