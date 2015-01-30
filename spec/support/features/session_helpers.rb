module Features
  module SessionHelpers
    def sign_in login,password
      visit new_user_session_path
      fill_in 'Login', with: login
      fill_in 'Password', with: password
      click_button 'Sign in'
    end
  end
end
