# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.3'
gem 'acts-as-taggable-on', '~> 8.0'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'devise'
gem 'dotenv-rails', groups: %i[development test]
gem 'jbuilder', '~> 2.7'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1.4', '>= 6.1.4.1'
gem 'sass-rails', '>= 6'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 5.0'
gem 'simple_form'
gem 'travis'


group :development, :test do
  gem 'awesome_print'
  gem 'factory_bot_rails'
  gem 'rspec-rails'
  gem 'rubocop-rails'
  gem 'rubocop-rspec'
  gem 'shoulda-matchers', '~> 5.0'
  gem 'rails-controller-testing'
  gem 'launchy'
  gem 'rake'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  gem 'simplecov', require: false
  gem 'simplecov-console', require: false
  gem 'webdrivers'
  gem 'webrick'
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'spring'
  gem 'web-console', '>= 4.1.0'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
