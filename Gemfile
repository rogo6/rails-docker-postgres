source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.2"

gem "rails", "~> 7.0.1"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"

gem "turbo-rails"
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem 'sidekiq'
gem 'haml'
gem 'tailwindcss-rails'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'faker'
  gem 'rspec-rails', '~> 4.0.1'
  gem 'factory_bot_rails', '~> 6.1.0'
  gem 'rubocop-rails', require: false
end

group :development do
  gem "web-console"
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  gem 'letter_opener'
  gem 'letter_opener_web'
  gem 'binding_of_caller'
  gem 'better_errors'
end

group :test do
  gem 'database_cleaner'
  gem 'shoulda-matchers', '~> 4.0'
  gem 'rails-controller-testing'
end
