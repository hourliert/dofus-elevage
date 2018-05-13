# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.5.1"

gem "rails", "~> 5.2.0"
gem "jbuilder", "~> 2.7.0"
gem "mysql2", "~> 0.5.1"
gem "puma", "~> 3.11"
gem "mutations", "~> 0.8.2"

gem "bootsnap", ">= 1.1.0", require: false

group :development, :test do
  gem "rubocop", "~> 0.55.0", require: false
  gem "rubocop-rails", "~> 1.4.0", require: false
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end
