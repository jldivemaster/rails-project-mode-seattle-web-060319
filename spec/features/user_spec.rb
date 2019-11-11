require 'rails_helper'

RSpec.describe "Users", type: :feature do
  describe "show" do
    it 'can be reached successfully'  do
      user = User.create(username: "testuser", name: "Test User", password: "asdf", password_confirmation: "asdf")
      visit user_path(user)

      expect(page.status_code).to eq(200)
    end
  end
end
