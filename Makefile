VERSION = $(shell git describe --tags --abbrev=0 | awk -F. '{OFS="."; $$NF+=1; print}')

.PHONY: build
build:
	@rm -rf ./build
	@PYTHONWARNINGS=ignore uvx copier copy -q --trust --force --vcs-ref=HEAD . ./build

release:
	@git tag $(VERSION)
	@git push --follow-tags
