require 'spec_helper'

describe User do
  describe "#is_admin?" do
    before do
      @user = create(:user, admin: true)
    end
    it "should define user as admin user" do
      @user.is_admin?.should eql true
    end
  end
end
