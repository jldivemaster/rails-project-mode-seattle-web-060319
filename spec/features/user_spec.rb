require 'rails_helper'

RSpec.describe "Users", type: :feature do
  before do
    @user = FactoryBot.create(:user)
    # User.create(username: "testuser", name: "Test User", password: "asdf", password_confirmation: "asdf")
    # @user.avatar = Faker::Avatar.image
  end

  describe "show" do
    xit 'can be reached successfully by the user' do
      visit user_path(@user)
      expect(page).to have_content(@user.name, "Profile")
    end

    # xit 'can only be reached by the same user when logged in' do
    #   # user1 = User.create(username: "testuser", name: "Test User", password: "asdf", password_confirmation: "asdf")
    #   # user2 = User.create(username: "testuser2", name: "Test User2", password: "asdf", password_confirmation: "asdf")
    #   # login_as(user2)
    #   #
    #   # visit user_path(user1)
    #   #
    #   # expect(page.status_code).to eq(200)
    # end
  end

  describe 'user update' do
    xit 'page can be reached successfully' do
      visit edit_user_path(@user)
      expect(page.status_code).to eq(200)
    end

    xit 'can update user profile' do
      # visit edit_user_path(@user)
      # byebug
      # # fill_in 'user[age]', with: 25
      # fill_in 'user_bio', with: "Hello"
      # click_on "Edit"
      # expect(page).to have_content(25, "Hello")
    end
  end
end
