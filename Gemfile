source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby "2.4.1"

gem "rails", "~> 5.1.4"
gem "pg", "~> 0.21.0"
gem "puma"


## ASSET MANAGEMENT
gem "coffee-rails"
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem "therubyracer", platforms: :ruby
gem "jquery-rails"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder"
gem "sass-rails"
gem "turbolinks"
gem "uglifier" # compressor for JavaScript assets

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 3.0"
# Use ActiveModel has_secure_password
# gem "bcrypt", "~> 3.1.7"

# SECURITY MANAGEMENT
# Admin and User authentication
gem "devise"
# authorization for user and admin feature access
gem "pundit"
# role management for users and admins
gem "rolify"

group :development, :test do
  gem "dotenv-rails"
  gem "byebug", platform: :mri
  gem "database_cleaner"
  gem "factory_bot_rails"
  gem "rspec-rails"
end

group :development do
  gem "fuubar" # show test suite progress
  gem "guard-rspec" # auto run specs related to channged code when saved
  gem "listen"
  # Spring speeds up development by keeping app running in the background.
  # Read more: https://github.com/rails/spring
  gem "spring"
  gem "spring-watcher-listen"
  # Access an IRB console on exception pages or by using <%= console %>
  # anywhere in the code.
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "shoulda-matchers"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
