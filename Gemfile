# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

# Specify your gem's dependencies in yabeda-hanami.gemspec
gemspec

gem "hanami", "~> 2.1"
gem "hanami-assets", "~> 2.1"
gem "hanami-controller", "~> 2.1"
gem "hanami-router", "~> 2.1"
gem "hanami-validations", "~> 2.1"
gem "hanami-view", "~> 2.1"


gem "dry-types", "~> 1.0", ">= 1.6.1"
gem "puma"
gem "rake"

group :development do
  gem "hanami-webconsole", "~> 2.1"
  gem "guard-puma"
end

group :development, :test do
  gem "dotenv"
end

group :cli, :development do
  gem "hanami-reloader", "~> 2.1"
end

group :cli, :development, :test do
  gem "hanami-rspec", "~> 2.1"
  gem "standard", "~> 1.3"
  gem "debug", "~> 1.9"
end

group :test do
  gem "capybara"
  gem "rack-test"
end
