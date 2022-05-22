# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "~> 3.1"

gem "puma", "~> 5.0"
gem "rails", "~> 7.0.3"
gem "redis", "~> 4.0"
gem "redi_search"
gem "sprockets-rails"
gem "sqlite3", "~> 1.4"

gem "importmap-rails"
gem "stimulus-rails"
gem "turbo-rails"

gem "bootsnap", require: false

group :development, :test do
  gem "debug", platforms: %i(mri mingw x64_mingw)
  gem "rubocop"
end

group :development do
  gem "web-console"
end
