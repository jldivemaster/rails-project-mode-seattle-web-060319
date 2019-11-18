require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.create(:user)
  end
  context 'creation' do
    it 'can be created successfully' do
      expect(@user).to be_valid
    end

    it 'must have a username' do
      @user.username = nil
      expect(@user).to_not be_valid
    end

    it 'must have a unique username' do
      user2 = User.create(username: "testuser", name: "Test User2", password: "asdfasdf", password_confirmation: "asdfasdf")
      expect(@user).to be_valid
      expect(user2).to_not be_valid
    end
  end
end
