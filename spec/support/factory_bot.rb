# If you do not include FactoryBot::Syntax::Methods in your test suite,
# then all factory_bot methods will need to be prefaced with FactoryBot.
# https://semaphoreci.com/community/tutorials/5-tips-for-more-effective-capybara-tests
RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
end
