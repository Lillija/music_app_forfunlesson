source "https://rubygems.org"

gem "rails", "~> 7.1.3"

gem "puma"
gem "propshaft"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"

# MongoDB (NoSQL)
gem "mongoid", "~> 8.1"

# Devise (Mongoid-compatible version)

# Redis (optional feature, safe to keep)
gem "redis", "~> 5.4"

gem "image_processing"
gem "bootsnap", require: false

gem "tzinfo-data", platforms: %i[windows jruby]

group :development, :test do
  gem "debug"
  gem "bundler-audit", require: false
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
