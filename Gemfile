# frozen_string_literal: true

source "https://rubygems.org"

gem "rake"
gem "hanami",            "~> 2.0.0.alpha2"
gem "hanami-router",     "~> 2.0.0.alpha2"
gem "hanami-controller", "~> 2.0.0.alpha2"
gem "hanami-view",       "~> 2.0.0.alpha2"

gem "sqlite3"
gem "rom", "~> 5.2"
gem "rom-sql", "~> 3.2"
gem "sequel", "~> 5.32"

gem "dry-types", "~> 1.0"
gem "dry-inflector", "0.2.0" # 0.2.1 includes a CSRF acronym


gem "puma"

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
  gem "rspec"
  gem "capybara"
end

group :production do
  # gem 'puma'
end
