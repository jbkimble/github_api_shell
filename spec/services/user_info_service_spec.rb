require 'rails_helper'

describe 'UserInfoService' do
  context "#profile_pic" do
    it "returns the users profile_pic" do
      picture = UserInfoService.new.profile_pic("1")

      expect(picture.class).to eq(String)
    end
  end
end
