# Capybara tests that are js: true struggle with transactions.
# More specifically, Capybara spins up an instance of our Rails app that
# can’t see our test data transaction.
# So even tho we’ve created a user in our tests, signing in will fail because
# to the Capybara run instance of our app, there are no users.
# Wrap tests in transactions and use truncation for js: true tests.
RSpec.configure do |config|
  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.strategy = :transaction
  end

  config.before(:each, js: true) do
    DatabaseCleaner.strategy = :truncation
  end

  # This block must be here, do not combine with the other `before(:each)` block.
  # This makes it so Capybara can see the database.
  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end
end
