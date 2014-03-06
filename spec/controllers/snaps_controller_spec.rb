require 'spec_helper'

describe SnapsController do
  
  include Devise::TestHelpers
  before (:each) do
    @user = User.create!({
      :email => 'user@test.com',
      :username => 'testuser',
      :password => 'pleasepleaseplease',
      :password_confirmation => 'pleasepleaseplease' 
      })
    sign_in @user
  end

  describe "GET 'new'" do
    it "returns http success" do
      get :new
      response.should be_success
    end
  end

  describe "Pusher" do
    it "receives update" do
      expect(Pusher).to receive(:trigger)
      post :create, {snap: {image: '', description: 'blah'}}
    end
  end
end
