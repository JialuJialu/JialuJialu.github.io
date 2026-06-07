# Local development helpers for previewing this Jekyll site.
#
# This machine's Ruby was built with CXX=false and its Command Line Tools
# libc++ headers are incomplete, so C++ native gems (eventmachine, pulled in
# by Jekyll) won't build with a plain `bundle install`. These targets scope a
# fix to this project only: RUBYOPT loads bin/cxx-config.rb, which makes mkmf
# emit bin/cxx (a clang++ wrapper adding the SDK's libc++ headers) as the C++
# compiler. Nothing in the Ruby install or system toolchain is modified.
#
# Usage:
#   make install   # bundle install (builds native gems via the wrapper)
#   make build     # build the site into _site/
#   make serve     # serve at http://localhost:4000 with livereload

export RUBYOPT := -r$(CURDIR)/bin/cxx-config.rb

.PHONY: install build serve
install:
	bundle install

build:
	bundle exec jekyll build

serve:
	bundle exec jekyll serve --livereload
