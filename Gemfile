# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "~> 3.2"

gem "geared_pagination"
gem "importmap-rails"
gem "propshaft"
gem "puma", "~> 5.0"
gem "rails"
gem "redis"
gem "redi_search"
gem "sqlite3"
gem "stimulus-rails"
gem "tailwindcss-rails"
gem "turbo-rails"

gem "bootsnap", require: false

group :development, :test do
  gem "debug", platforms: %i(mri mingw x64_mingw)
  gem "rubocop"
end

group :development do
  gem "web-console"
end
