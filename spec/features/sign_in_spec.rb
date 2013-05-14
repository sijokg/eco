require 'spec_helper'

feature 'Visitor sign in' do
  let(:user) {create :user }
  scenario 'with valid email and password' do
    sign_in user.email, user.password
    page.should have_content("Sign out")
  end

  scenario 'with invalid email' do
    sign_in 'blah', user.password
    page.should have_content('Invalid email')
  end

  scenario 'with blank password' do
    sign_in user.email, nil
    expect(page).to have_content('Invalid email or password')
  end

  context "As administrator" do
    let(:user) {FactoryGirl.create(:user, admin: true)}
    scenario 'with valid email and password' do
      sign_in user.email, user.password
      page.should have_content("Sign out")
      page.should have_content("Administration")
    end

  end 

  
end
