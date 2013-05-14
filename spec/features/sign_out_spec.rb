require 'spec_helper'

feature 'Visitor sign out' do
  scenario "login user clicks on signout" do
    user = create(:user)
    sign_in user.email, user.password
    click_link "Sign out"
    page.should have_content("Signed out successfully")
  end
end
