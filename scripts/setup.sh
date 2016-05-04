#!/bin/bash
# This script is used by vagrant to setup the test box

# Run group install
sudo dnf group install "C Development Tools and Libraries" -y

# Install all the sytem packages we need, this includes also all dependencies for ruby and Jekyll
# List of packages
PACKAGES="ruby-devel zlib-devel libxml2-devel libxslt-devel redhat-rpm-config patch nodejs python-feedparser python-pygments rubygem-rack rubygem-capybara rubygem-rspec"

# Install them
sudo dnf install $PACKAGES -y

# We need at least Jekyll 3.0 because of hooking rss.py script into the build itself
# see https://github.com/slashdotdash/jekyll-lunr-js-search/pull/85
gem uninstall jekyll || :
gem install jekyll --version 3.1.3
gem install nokogiri -- --use-system-libraries
gem install jekyll-lunr-js-search
gem install jekyll-sitemap

