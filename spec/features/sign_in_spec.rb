require "rails_helper"

RSpec.feature "Sign In", type: :feature do
  context "user signs in" do
    before do
      create(:user, email: "user@example.com", password: "password" )
      visit "/"
    end

    scenario "with valid credentials" do
      fill_in "Email", with: "user@example.com"
      fill_in "Password", with: "password"
      click_button "Log in"

      expect(page).to have_text "The Dashboard"
    end

    scenario "with incorrect password" do
      fill_in "Email", with: "user@example.com"
      fill_in "Password", with: "invalid"
      click_button "Log in"

      expect(page).to have_text "Invalid Email or password"
    end

    scenario "with incorrect email" do
      fill_in "Email", with: "invalid@example.com"
      fill_in "Password", with: "password"
      click_button "Log in"

      expect(page).to have_text "Invalid Email or password"
    end
  end
end
