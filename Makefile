VERSION = $(shell git describe --tags --abbrev=0 | awk -F. '{OFS="."; $$NF+=1; print}')

all: build test

.PHONY: build
build:
	@rm -rf ./build
	@PYTHONWARNINGS=ignore uvx copier copy -q --trust --force --vcs-ref=HEAD . ./build

.PHONY: test
test:
	@poetry -C build run task lint
	@poetry -C build run task test -q

.PHONY: release
release:
	@git tag $(VERSION)
	@git push origin tag $(VERSION)
