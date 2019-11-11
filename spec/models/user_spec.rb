require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'creation' do
    it 'can be created' do
      user = User.create(username: "testuser", name: "Test User", password: "asdf", password_confirmation: "asdf")
      expect(user).to be_valid
    end
  end
end
