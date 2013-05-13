require 'spec_helper'

feature 'Visitor sign in' do
  scenario 'with valid email and password' do
    sign_in FactoryGirl.create(:user)

    expect(page).to have_content('Sign out')
  end

  scenario 'with invalid email' do
    sign_in FactoryGirl.create(:user, email: 'blah')

    expect(page).to have_content('Sign in')
  end

  scenario 'with blank password' do
    sign_in FactoryGirl.create(:user, password: nil)

    expect(page).to have_content('Sign in')
  end 

  def sign_in(user)
    visit sign_in_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign in'
  end
end
