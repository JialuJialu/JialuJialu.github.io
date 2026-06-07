source "https://rubygems.org"

# Hello! This is where you manage which Jekyll version is used to run.
# When you want to use a different version, change it below, save the
# file and run `bundle install`. Run Jekyll with `bundle exec`, like so:
#
#     bundle exec jekyll serve
#
# This will help ensure the proper Jekyll version is running.
# Happy Jekylling!
#
# NOTE: GitHub Pages builds this site server-side with its own `github-pages`
# gem environment and ignores this Gemfile. This Gemfile is only used for
# LOCAL previews (`bundle exec jekyll serve`). It targets a modern Ruby
# (3.x) so the old `github-pages` native-gem toolchain isn't required.
gem "jekyll", "~> 4.3"

# Uses the same theme that `remote_theme` pulls in `_config.yml`.
gem "minimal-mistakes-jekyll", "~> 4.24"

# If you have any plugins, put them here!
group :jekyll_plugins do
  gem "jekyll-feed"
  gem "jekyll-compose"
  gem "jekyll-include-cache"
  gem "jekyll-remote-theme"
end

# Ruby 3.0+ no longer ships webrick in the stdlib; `jekyll serve` needs it.
gem "webrick", "~> 1.8"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# and associated library.
install_if -> { RUBY_PLATFORM =~ %r!mingw|mswin|java! } do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

# Performance-booster for watching directories on Windows
gem "wdm", "~> 0.1.1", :install_if => Gem.win_platform?
