source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby "2.4.1"

# Bundle edge Rails instead: gem "rails", github: "rails/rails"
gem "rails", "~> 5.0.2"
# postgresql as the database for Active Record
gem "pg", "~> 0.18"
# app server
gem "puma", "~> 3.0"
# SCSS for stylesheets
gem "sass-rails", "~> 5.0"
# compressor for JavaScript assets
gem "uglifier", ">= 1.3.0"
# .coffee assets and views
gem "coffee-rails", "~> 4.2"
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem "therubyracer", platforms: :ruby

# Use jquery as the JavaScript library
gem "jquery-rails"
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem "turbolinks", "~> 5"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder", "~> 2.5"
# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 3.0"
# Use ActiveModel has_secure_password
# gem "bcrypt", "~> 3.1.7"

# Content Management System for app
gem "comfortable_mexican_sofa", "~> 1.12.0"

# Admin and User authentication
gem "devise"
# role management for users and admins
# gem "rolify"
# authorization for user and admin feature access
# gem "pundit"

group :development, :test do
  # stop code execution and open a debugger console
  gem "byebug", platform: :mri
  # configure environment variables
  gem "dotenv-rails", "~> 2.2"
  # support tests for JavaScript features
  gem "database_cleaner", "~> 1.5"
  # testing framework
  gem "rspec-rails", "~> 3.5"
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %>
  # anywhere in the code.
  gem "web-console", ">= 3.3.0"
  gem "listen", "~> 3.0.5"
  # Spring speeds up development by keeping app running in the background.
  # Read more: https://github.com/rails/spring
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  # automatically run specs related to channged code when file is saved
  gem "guard-rspec", "~> 4.7"
  # show test suite progress
  gem "fuubar", "~> 2.2"
end

group :test do
  # Rspec assertion matchers
  gem "shoulda-matchers", "~> 3.1"
  # user interaction testing
  gem "capybara", "~> 2.13"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
