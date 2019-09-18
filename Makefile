.DEFAULT_GOAL := help

.PHONY: help
help: ## Print Makefile help.
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

.PHONY: install-hooks
install-hooks: ## Install git hooks.
	pip3 install --user --upgrade pre-commit
	pre-commit install -f --install-hooks

.PHONY: ip-reservation-list
ip-reservation-list: ## List reserved IPv4 addresses
	git grep -h -o '192.168.50.[0-9]\{1,3\}' | sort -t. -k4 -n
