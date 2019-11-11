require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'create' do
    it 'successfully creates a new user' do
      expect{
          post :create, params: { :user => { :username => "testuser", :password => "asdf", :password_confirmation => "asdf" } }
        }.to change(User,:count).by(1)
    end
  end
end
