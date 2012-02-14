require 'spec_helper'

describe User do
  context "#update_password" do
    it "updates the users password" do
      @user = Factory(:user)
      expect {
        @user.update_password("new_password")
      }.to change(@user, :encrypted_password)
    end
  end
end

