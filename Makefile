# Makefile
SHELL := /bin/bash
# We like colors
# # From: https://coderwall.com/p/izxssa/colored-makefile-for-golang-projects
RED=`tput setaf 1`
GREEN=`tput setaf 2`
RESET=`tput sgr0`
YELLOW=`tput setaf 3`


HUGO = docker run -u "$(shell id -u):$(shell id -g)" -it --rm -v `pwd`:/src -p 1313:1313 quay.io/tiramisu/mr.hugo

# Add the following 'help' target to your Makefile
# # And add help text after each target name starting with '\#\#'
.PHONY: help
help: ## This help message
	@echo -e "$$(grep -hE '^\S+:.*##' $(MAKEFILE_LIST) | sed -e 's/:.*##\s*/:/' -e 's/^\(.\+\):\(.*\)/\\x1b[36m\1\\x1b[m:\2/' | column -c2 -t -s :)"


.PHONY: server
server: ## Serves local, open yur browser on localhost on port 1313
	$(HUGO) server -w --baseUrl="http://localhost:1313" --bind=0.0.0.0 --buildDrafts

.PHONY: clean
clean: ##Removes /public
	$(RM) -r public

.PHONY: build
build: clean ## Builds static HTML into /public
	$(HUGO)

.PHONY: new
new: ## Creates new post -> 'make new post /foobar.md'
	$(HUGO) new

.PHONY: create
create: ## Initial setup -> run this in empty /dir
	$(HUGO) new site .
