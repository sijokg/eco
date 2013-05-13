FactoryGirl.define do
  factory :user do |user|
    user.username              "Test User"
    user.email                 "user@example.com"
    user.password              "password"
    user.password_confirmation "password"
    user.firstname             "Test"
    user.lastname              "User" 
  end  
end
