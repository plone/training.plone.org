# Makefile used for setup and development
#
# The shell we use
SHELL := /bin/bash

# We like colors
NO_COLOR=\033[0m
OK_COLOR=\033[32;01m
ERROR_COLOR=\033[31;01m
WARN_COLOR=\033[33;01m

# Some vars we use
WEBSITE_DIR=/home/vagrant/website

serve:
	echo "${OK_COLOR} => Starting to serve site on dev box ${NO_COLOR}"
	vagrant ssh -- "cd $(WEBSITE_DIR) && \
	    jekyll serve --force_polling -H 0.0.0.0"

#ToDo: connect to notify to get messages via notify, add echo with color

.PHONY: serve
