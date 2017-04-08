require "rails_helper"

RSpec.feature "Sign In", type: :feature do
  context "existing user" do
    before { create(:user, email: "user@example.com", password: "password" ) }

    scenario "signs in with valid credentials" do
      visit "/"

      fill_in "Email", with: "user@example.com"
      fill_in "Password", with: "password"
      click_button "Log in"

      expect(page).to have_text "The Dashboard"
    end
  end
end
