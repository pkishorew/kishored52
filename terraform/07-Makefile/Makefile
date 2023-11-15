help:           ## Show this help.
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

one:  ## One number tasks
	@echo One
	@echo One more

two: ## Two number tasks
	@echo Two
	@echo Two more

three: one ## Three number tasks
	@echo Three

