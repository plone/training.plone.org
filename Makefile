# Makefile used for setup and development
#
# The shell we use
SHELL := /bin/bash

# We like colors
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`
yellow=`tput setaf 3`
# Some vars we use
WEBSITE_DIR=/home/vagrant/website


# Add the following 'help' target to your Makefile
# And add help text after each target name starting with '\#\#'
help: ## This help message
	@echo -e "$$(grep -hE '^\S+:.*##' $(MAKEFILE_LIST) | sed -e 's/:.*##\s*/:/' -e 's/^\(.\+\):\(.*\)/\\x1b[36m\1\\x1b[m:\2/' | column -c2 -t -s :)"


boot: ## Starting vagrant and run provision
	vagrant up

serve: ## Connects to vagrant and starts serving the site
	@echo "${yellow} => Starting to serve site on dev box ${reset}"
	vagrant ssh -- "cd $(WEBSITE_DIR) && \
	    jekyll serve --force_polling -H 0.0.0.0 --detach > /dev/null 2>&1 &"
	@echo "${yellow} => Browse to http://127.0.0.1:4000 ${reset}"

stop: ## Will stop serving the site
	@echo "${yellow} => Stopping to serve site on dev box ${reset}"
	vagrant ssh -- "pkill -f jekyll"


reload: stop serve

#ToDo: connect to notify to get messages via notify, add echo with color

.PHONY: serve stop reload
