#By adding this we can call create(:user) instead of FactoryGirl.create(:user)
RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end
