require 'spec_helper'

describe User do
  describe "#is_admin?" do
    before do
      @user = create(:user, admin: true)
    end
    it "should define user as admin user" do
      expect(@user.is_admin?).to eql true
    end
  end
end
