# frozen_string_literal: true

source "https://rubygems.org"

# Core gems
gem "rake"

# Application framework
gem "hanami",             "~> 2.0.0.alpha6"
gem "hanami-router",      "~> 2.0.0.alpha6"
gem "hanami-controller",  "~> 2.0.0.alpha6"
gem "hanami-view",        "~> 2.0.0.alpha6"
gem "hanami-validations", "~> 2.0.0.alpha1"
gem "hanami-helpers", github: "hanami/helpers", branch: "task/hanami-view-2-compat"

# HTTP
gem "puma"

# Database
gem "sqlite3"
gem "rom", "~> 5.2"
gem "rom-factory", "~> 0.10"
gem "rom-sql", "~> 3.2"
gem "sequel", "~> 5.32"

# Application
gem "dry-types", "~> 1.0"
gem "erbse", "~> 0.1"

group :development do
  # Code reloading
  # See: http://hanamirb.org/guides/projects/code-reloading
  gem "shotgun"
  gem "rubocop"
end

group :test, :development do
  gem "byebug"
  gem "dotenv", "~> 2.7"
end

group :test do
  gem "rspec", "~> 3.9"
  gem "capybara", "~> 3.0"
  gem "database_cleaner-sequel", "~> 2.0"
  gem "simplecov", "~> 0.17"
end

group :production do
  # gem 'puma'
end
