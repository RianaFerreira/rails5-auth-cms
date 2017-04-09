# If you do not include FactoryGirl::Syntax::Methods in your test suite,
# then all factory_girl methods will need to be prefaced with FactoryGirl.
# https://semaphoreci.com/community/tutorials/5-tips-for-more-effective-capybara-tests
RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end
