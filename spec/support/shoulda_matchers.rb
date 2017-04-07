Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    # test framework
    with.test_framework :rspec
    
    # libraries
    with.library :active_record
    with.library :active_model
    with.library :action_controller
  end
end
